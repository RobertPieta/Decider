//
//  DCAbstractDetailViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@class DCAbstractModel;
@interface DCAbstractDetailViewController : DCAbstractViewController
@property(nonatomic, strong) DCAbstractModel *model;

@end
