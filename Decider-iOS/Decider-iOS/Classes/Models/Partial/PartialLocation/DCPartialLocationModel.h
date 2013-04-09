//
//  DCPartialLocationModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractModel.h"

@interface DCPartialLocationModel : DCAbstractModel
@property(nonatomic, strong) NSString *lid;
@property(nonatomic, strong) NSString *title;
@property(nonatomic, strong) NSString *lat;
@property(nonatomic, strong) NSString *lon;

@end
