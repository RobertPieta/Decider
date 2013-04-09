//
//  DCAddEmailsToEventRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAddEmailsToEventRequest.h"

@implementation DCAddEmailsToEventRequest

-(id)initRequestWithEventId:(NSString*)eid andEmail:(NSString*)email {
    if(self = [super initRequest]) {
        _eid = eid;
        _email = email;
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
    urlExt = [NSString stringWithFormat:URL_Request_AddEmailsToEvent,_eid,_email];
    [super startRequest];
}

@end
