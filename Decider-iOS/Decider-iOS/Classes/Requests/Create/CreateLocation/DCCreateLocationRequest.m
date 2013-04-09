//
//  DCCreateLocationRequest.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCCreateLocationRequest.h"

@implementation DCCreateLocationRequest

-(id)initRequestWithTitle:(NSString*)title street:(NSString*)street StreetNumber:(NSString*)streetNum city:(NSString*)city andState:(NSString*)state; {
    if(self = [super initRequest]) {
        _title = title;
        _street = street;
        _streetNum = streetNum;
        _city = city;
        _state = state;
        
        _lat = NULL;
        _lon = NULL;
    }
    return self;
}

#pragma mark -
#pragma mark Options

-(void)method:(NSMutableURLRequest *)urlRequest {
    [urlRequest setHTTPMethod:Code_HTTP_POST];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest {
    urlExt = [NSString stringWithFormat:URL_Request_CreateLocation,_title,_street,_streetNum,_city,_state];
    
    if(_lat != NULL && _lon != NULL) {
        urlExt = [urlExt stringByAppendingFormat:URL_Request_LocationCoordinate,_lat,_lon];
    }
    [super startRequest];
}

@end
