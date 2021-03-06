//
//  DCUserModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractModel.h"

@interface DCUserModel : DCAbstractModel
@property(nonatomic, strong) NSString *fbid;
@property(nonatomic, strong) NSString *email;
@property(nonatomic, strong) NSString *name;

@end
