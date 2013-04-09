//
//  DCUserModel.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCUserModel.h"

@implementation DCUserModel

-(id)initWithJSONDictionary:(NSDictionary*)dict {
    if(self = [super initWithJSONDictionary:dict]) {
        _fbid = [dict objectForKey:DownloadCode_User_FBId];
        _email = [dict objectForKey:DownloadCode_User_Email];
        _name = [dict objectForKey:DownloadCode_User_Name];
    }
    return self;
}

-(NSArray*)modelsWithArrayOfJSONDictionaries:(NSArray*)array {
    if([array count] == 0) return [NSArray array];
    
    NSMutableArray *retArray = [NSMutableArray array];
    for(NSDictionary *dict in array) {
        //Does [self class] work?
        DCUserModel *model = [[DCUserModel alloc] initWithJSONDictionary:dict];
        [retArray addObject:model];
    }
    
    return retArray;
}

@end
