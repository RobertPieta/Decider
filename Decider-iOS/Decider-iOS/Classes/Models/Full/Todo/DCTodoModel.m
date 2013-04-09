//
//  DCTodoModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCTodoModel.h"
#import "DCLocationModel.h"

@implementation DCTodoModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _description = [dict objectForKey:DownloadCode_Todo_Description];
        _location = [[DCLocationModel alloc] initWithJSONDictionary:[dict objectForKey:DownloadCode_Todo_Location]];
    }
    return self;
}

-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCTodoModel *model = [[DCTodoModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
