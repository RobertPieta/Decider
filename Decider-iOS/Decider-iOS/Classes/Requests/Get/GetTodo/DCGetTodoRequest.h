//
//  DCGetTodoRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCGetTodoRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *tdid;

-(id)initRequestWithTodoId:(NSString*)tdid;

@end
