//
//  DCAuthenticationRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCAuthenticationRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *email;
@property(nonatomic, strong, readonly) NSString *password;

-(id)initRequestWithEmail:(NSString*)email andPassword:(NSString*)password;



@end
