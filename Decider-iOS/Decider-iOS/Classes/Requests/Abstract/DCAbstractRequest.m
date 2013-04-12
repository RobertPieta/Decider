//
//  DCAbstractRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"
#import "Reachability.h"

@interface DCAbstractRequest() {
@private
    NSURLConnection *connection;
    NSMutableData *responseData;
}
@end;

@implementation DCAbstractRequest

-(id)initRequest {
    if(self = [super init]) {
        _data = NULL;
        _delegate = NULL;
        connection = NULL;
        
        _isActive = NO;
        baseUrl = URL_Request_Base;
        urlExt = @"";
    }
    return self;
}

#pragma mark -
#pragma mark Info Methods

+(BOOL)internetAvailable {
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    if([reachability currentReachabilityStatus] == NotReachable) return NO;
    else return YES;
}

#pragma mark -
#pragma mark Options

-(void)authenticate:(NSMutableURLRequest*)request {
    
}

-(void)method:(NSMutableURLRequest*)urlRequest {
    [urlRequest setHTTPMethod:Code_HTTP_Get];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    if(![DCAbstractRequest internetAvailable]) {
        if([self delegate] && [[self delegate] respondsToSelector:@selector(internetConnectionNotAvailableForRequest:)]) {
            [[self delegate] internetConnectionNotAvailableForRequest:self];
            return;
        }
    }
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@/%@",baseUrl,urlExt];
    NSLog(@"Url string created: %@",urlStr);
    
    NSURL *URL = [NSURL URLWithString:urlStr];
    [request setURL:URL];
    
    [self method:request];
    [self authenticate:request];
    
    [request setCachePolicy:NSURLRequestReloadIgnoringCacheData];
    [request setTimeoutInterval:100];
    
    connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
    _isActive = YES;
}

-(void)cancelRequest {
    [connection cancel];
    connection = NULL;
}

#pragma mark -
#pragma mark NSURL Connection Data Delegate Methods

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"recieved response");
    responseData = [NSMutableData data];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"recieved data");
    [responseData appendData:data];
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Failed with error");
    _isActive = NO;
    _data = NULL;
    
    if([self delegate] && [[self delegate] respondsToSelector:@selector(errorOccured:duringRequest:)]) {
        [[self delegate] errorOccured:error duringRequest:self];
    }
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"Connection finished");
    
    _isActive = NO;
    _data = responseData;
    
    if([self delegate] && [[self delegate] respondsToSelector:@selector(requestCompleted:withData:)]) {
        [[self delegate] requestCompleted:self withData:_data];
    }
}

#pragma mark -
#pragma mark Encoding Methods

//Source - http://stackoverflow.com/questions/6006823/how-to-get-base64-nsstring-from-nsdata
+(NSString*)base64forData:(NSData*)theData {
    const uint8_t* input = (const uint8_t*)[theData bytes];
    NSInteger length = [theData length];
    
    static char table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    
    NSMutableData* data = [NSMutableData dataWithLength:((length + 2) / 3) * 4];
    uint8_t* output = (uint8_t*)data.mutableBytes;
    
    NSInteger i;
    for (i=0; i < length; i += 3) {
        NSInteger value = 0;
        NSInteger j;
        for (j = i; j < (i + 3); j++) {
            value <<= 8;
            
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
        
        NSInteger theIndex = (i / 3) * 4;
        output[theIndex + 0] =                    table[(value >> 18) & 0x3F];
        output[theIndex + 1] =                    table[(value >> 12) & 0x3F];
        output[theIndex + 2] = (i + 1) < length ? table[(value >> 6)  & 0x3F] : '=';
        output[theIndex + 3] = (i + 2) < length ? table[(value >> 0)  & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

@end
