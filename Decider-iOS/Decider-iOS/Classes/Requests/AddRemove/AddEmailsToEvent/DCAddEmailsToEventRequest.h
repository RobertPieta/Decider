//
//  DCAddEmailsToEventRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCAddEmailsToEventRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString* eid;
@property(nonatomic, strong, readonly) NSString* email;

-(id)initRequestWithEventId:(NSString*)eid andEmail:(NSString*)email;

@end
