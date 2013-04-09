//
//  DCAbstractModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCAbstractModel : NSObject

-(id)initWithJSONDictionary:(NSDictionary*)dict;
-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array;

@end
