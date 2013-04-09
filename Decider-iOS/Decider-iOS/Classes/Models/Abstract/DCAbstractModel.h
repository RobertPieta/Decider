//
//  DCAbstractModel.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCAbstractModel : NSObject

/**
 * This method creates the model by using a JSON dictionary that has been
 * converted into a NSDictionary
 * @param dict - The NSDictionary representing the model
 * @return The model object
 */
-(id)initWithJSONDictionary:(NSDictionary*)dict;

/**
 * This method creates an array of models by using an array of JSON dictionaries 
 * @param dict - The NSDictionary representing the model
 * @return An array of model objects
 */
-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array;

@end
