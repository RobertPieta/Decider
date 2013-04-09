//
//  DCAddPointsRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAddPointsRequest.h"

@implementation DCAddPointsRequest

-(id)initRequestWithTodoId:(NSString*)tdid {
    if(self = [super initRequest]) {
        
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
    urlExt = [NSString stringWithFormat:URL_Request_AddPointsToTodo,_tdid];
}

@end
