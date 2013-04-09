//
//  DCTodoModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCPartialTodoModel.h"

@class DCLocationModel;
@interface DCTodoModel : DCPartialTodoModel
@property(nonatomic, strong) NSString *description;
@property(nonatomic, strong) DCLocationModel *location;

@end
