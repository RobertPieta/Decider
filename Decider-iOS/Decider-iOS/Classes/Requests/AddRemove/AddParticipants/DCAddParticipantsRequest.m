//
//  DCAddParticipantsRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAddParticipantsRequest.h"

@implementation DCAddParticipantsRequest

-(id)initRequestWithEventId:(NSString*)eid andFacebookId:(NSString*)fbid {
    if(self = [super initRequest]) {
        _eid = eid;
        _fbid = fbid;
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
    urlExt = [NSString stringWithFormat:URL_Request_AddParticipants,_eid,_fbid];
    [super startRequest];
}

@end
