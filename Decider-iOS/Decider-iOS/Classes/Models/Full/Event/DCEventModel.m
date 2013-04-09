//
//  DCEventModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCEventModel.h"

@implementation DCEventModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _description = [dict objectForKey:DownloadCode_Event_Description];
    }
    return self;
}

-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCEventModel *model = [[DCEventModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
