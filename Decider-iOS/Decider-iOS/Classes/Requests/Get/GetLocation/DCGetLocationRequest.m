//
//  DCGetLocationRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCGetLocationRequest.h"

@implementation DCGetLocationRequest

-(id)initRequestWithLocationId:(NSString *)lid {
    if(self = [super initRequest]) {
        _lid = lid;
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_Location,_lid];
}

@end
