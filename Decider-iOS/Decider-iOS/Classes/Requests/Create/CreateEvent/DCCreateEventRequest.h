//
//  DCCreateEventRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCCreateEventRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *adminFBId;
@property(nonatomic, strong, readonly) NSString *title;
@property(nonatomic, strong, readonly) NSString *description;

-(id)initRequestWithAdminFacebookId:(NSString*)adminFBId title:(NSString*)title andDescription:(NSString*)description;

@end
