//
//  DCCreateTodoRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCCreateTodoRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *eid;
@property(nonatomic, strong, readonly) NSString *title;
@property(nonatomic, strong, readonly) NSString *description;

-(id)initRequestWithEventId:(NSString*)eid title:(NSString*)title andDescription:(NSString*)description;

@end
