//
//  DCPartialEventModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCPartialEventModel.h"

@implementation DCPartialEventModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _eid = [dict objectForKey:DownloadCode_Event_EId];
        _adminFBId = [dict objectForKey:DownloadCode_Event_AdminFBId];
        _title = [dict objectForKey:DownloadCode_Event_Title];
    }
    return self;
}

+(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCPartialEventModel *model = [[DCPartialEventModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
