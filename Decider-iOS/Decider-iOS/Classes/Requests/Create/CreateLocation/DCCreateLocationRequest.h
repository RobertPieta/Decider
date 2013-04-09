//
//  DCCreateLocationRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractRequest.h"

@interface DCCreateLocationRequest : DCAbstractRequest
@property(nonatomic, strong, readonly) NSString *title;
@property(nonatomic, strong, readonly) NSString *street;
@property(nonatomic, strong, readonly) NSString *streetNum;
@property(nonatomic, strong, readonly) NSString *city;
@property(nonatomic, strong, readonly) NSString *state;

@property(nonatomic, strong) NSString *lat;
@property(nonatomic, strong) NSString *lon;

-(id)initRequestWithTitle:(NSString*)title street:(NSString*)street StreetNumber:(NSString*)streetNum city:(NSString*)city andState:(NSString*)state;

@end
