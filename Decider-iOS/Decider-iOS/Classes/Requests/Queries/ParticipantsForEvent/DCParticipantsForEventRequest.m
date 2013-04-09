//
//  DCParticipantsForEventRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCParticipantsForEventRequest.h"

@implementation DCParticipantsForEventRequest

-(id)initRequestWithEventId:(NSString*)eid {
    if(self = [super initRequest]) {
        _eid = eid;
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_ParticipantsForEvent,_eid];
    [super startRequest];
}

@end
