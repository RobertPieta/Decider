//
//  DCAuthenticationRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAuthenticationRequest.h"

@implementation DCAuthenticationRequest

-(id)initRequestWithEmail:(NSString*)email andPassword:(NSString*)password {
    if(self = [super initRequest]) {
        _email = email;
        _password = password;
    }
    return self;
}

#pragma mark -
#pragma mark Options

-(void)authenticate:(NSMutableURLRequest*)request {
    NSString *authStr = [NSString stringWithFormat:HTTP_Authentication_Format,_email,_password];
    NSData *authData = [authStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString *authValue = [NSString stringWithFormat:HTTP_Authentication_Header,[DCAbstractRequest base64forData:authData]];
    [request addValue:authValue forHTTPHeaderField:HTTP_Header_Authorization];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = URL_Requst_Authentication;
    [super startRequest];
}

@end
