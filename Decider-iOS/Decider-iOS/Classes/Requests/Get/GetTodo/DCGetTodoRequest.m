//
//  DCGetTodoRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCGetTodoRequest.h"

@implementation DCGetTodoRequest

-(id)initRequestWithTodoId:(NSString *)tdid {
    if(self = [super initRequest]) {
        _tdid = tdid;
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_Todo,_tdid];
}

@end
