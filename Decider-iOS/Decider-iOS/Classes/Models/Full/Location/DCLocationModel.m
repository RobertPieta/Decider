//
//  DCLocationModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCLocationModel.h"

@implementation DCLocationModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _street = [dict objectForKey:DownloadCode_Location_Street];
        _street_num = [dict objectForKey:DownloadCode_Location_StreetNum];
        _city = [dict objectForKey:DownloadCode_Location_City];
        _state = [dict objectForKey:DownloadCode_Location_State];
    }
    return self;
}

+(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCLocationModel *model = [[DCLocationModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

#pragma mark -
#pragma mark Description

-(NSString*)description {
    return [NSString stringWithFormat:@"%@ - %@ %@, %@ (%@)",[self title],_street_num, _street,_city,_state];
}

@end
