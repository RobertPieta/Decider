//
//  DCPartialEventModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractModel.h"

@interface DCPartialEventModel : DCAbstractModel
@property(nonatomic, strong) NSString *eid;
@property(nonatomic, strong) NSString *adminFBId;
@property(nonatomic, strong) NSString *title;

@end
