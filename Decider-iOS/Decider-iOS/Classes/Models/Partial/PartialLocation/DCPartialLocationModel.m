//
//  DCPartialLocationModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCPartialLocationModel.h"

@implementation DCPartialLocationModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _lid = [dict objectForKey:DownloadCode_Location_Lid];
        _title = [dict objectForKey:DownloadCode_Location_Title];
        _lat = [dict objectForKey:DownloadCode_Location_Lat];
        _lon = [dict objectForKey:DownloadCode_Location_Lon];
    }
    return self;
}

-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCPartialLocationModel *model = [[DCPartialLocationModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
