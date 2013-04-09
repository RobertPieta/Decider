//
//  DCLocationsForUserRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCLocationsForUserRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *fbid;

-(id)initRequestWithFacebookId:(NSString*)fbid;

@end
