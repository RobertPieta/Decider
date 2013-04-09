//
//  DCRegistrationRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCRegistrationRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *email;
@property(nonatomic, strong, readonly) NSString *password;
@property(nonatomic, strong, readonly) NSString *name;

-(id)initRequestWithEmail:(NSString*)email password:(NSString*)password andName:(NSString*)name;

@end
