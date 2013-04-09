//
//  DCTodosForEventRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCTodosForEventRequest.h"

@implementation DCTodosForEventRequest

-(id)initRequestWithEventId:(NSString*)eid {
    if(self = [super initRequest]) {
        _eid = eid;
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_TodosForEvent,_eid];
}

@end
