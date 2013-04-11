//
//  DCLocationModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCPartialLocationModel.h"

@interface DCLocationModel : DCPartialLocationModel
@property(nonatomic, strong) NSString *street;
@property(nonatomic, strong) NSString *street_num;
@property(nonatomic, strong) NSString *city;
@property(nonatomic, strong) NSString *state;

#pragma mark -
#pragma mark Description

-(NSString*)description;

@end
