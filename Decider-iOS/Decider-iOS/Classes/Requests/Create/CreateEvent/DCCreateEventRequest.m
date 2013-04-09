//
//  DCCreateEventRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCCreateEventRequest.h"

@implementation DCCreateEventRequest

-(id)initRequestWithAdminFacebookId:(NSString*)adminFBId title:(NSString*)title andDescription:(NSString*)description {
    if(self = [super initRequest]) {
        _adminFBId = adminFBId;
        _title = title;
        _description = description;
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
    urlExt = [NSString stringWithFormat:URL_Request_CreateEvent,_adminFBId,_title,_description];
    [super startRequest];
}

@end
