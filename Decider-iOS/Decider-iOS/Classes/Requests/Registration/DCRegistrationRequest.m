//
//  DCRegistrationRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCRegistrationRequest.h"

@interface DCRegistrationRequest() {
@private
}
@end;

@implementation DCRegistrationRequest

-(id)initRequestWithEmail:(NSString*)email password:(NSString*)password andName:(NSString*)name {
    if(self = [super initRequest]) {
        _email = email;
        _password = password;
        _name = name;
    }
    return self;
}

#pragma mark -
#pragma mark Options

-(void)method:(NSMutableURLRequest *)urlRequest {
    [urlRequest setHTTPMethod:Code_HTTP_POST];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Requst_Registration,_email,_password,_name];
    [super startRequest];
}

@end
