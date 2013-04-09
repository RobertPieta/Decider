//
//  DCPartialTodoModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCPartialTodoModel.h"
#import "DCPartialLocationModel.h"

@implementation DCPartialTodoModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _eid = [dict objectForKey:DownloadCode_Todo_EId];
        _tdid = [dict objectForKey:DownloadCode_Todo_TdId];
        _title = [dict objectForKey:DownloadCode_Todo_Title];
        _pts = [dict objectForKey:DownloadCode_Todo_Pts];
        _partialLocation = [[DCPartialLocationModel alloc] initWithJSONDictionary:[dict objectForKey:DownloadCode_Todo_Location]];
    }
    return self;
}

-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCPartialTodoModel *model = [[DCPartialTodoModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
