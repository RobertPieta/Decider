//
//  DCPartialTodoModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractModel.h"

@class DCPartialLocationModel;
@interface DCPartialTodoModel : DCAbstractModel
@property(nonatomic, strong) NSString *eid;
@property(nonatomic, strong) NSString *tdid;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *pts;
@property(nonatomic, strong) DCPartialLocationModel *partialLocation;

@end
