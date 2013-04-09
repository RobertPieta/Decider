//
//  DCLocationsForUserRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCLocationsForUserRequest.h"

@implementation DCLocationsForUserRequest

-(id)initRequestWithFacebookId:(NSString*)fbid {
    if(self = [super initRequest]) {
        _fbid = fbid;
    }
    return self;
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_LocationsForUser,_fbid];
    [super startRequest];
}

@end
