//
//  DCRemovePointsRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCRemovePointsRequest.h"

@implementation DCRemovePointsRequest

-(id)initRequestWithTodoId:(NSString*)tdid {
    if(self = [super initRequest]) {
        
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_RemovePointsFromTodo,_tdid];
}

@end
