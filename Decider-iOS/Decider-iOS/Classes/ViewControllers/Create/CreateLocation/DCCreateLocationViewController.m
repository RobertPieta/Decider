//
//  DCCreateLocationViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCCreateLocationViewController.h"
#import "DCCreateLocationRequest.h"

@interface DCCreateLocationViewController() {
@private
}

@end

@implementation DCCreateLocationViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark Create Request Methods

-(void)updateRequest {
    NSString *title = [titleTextField text];
    NSString *street = [streetTextField text];
    NSString *streetNum = [streetNumTextField text];
    NSString *city = [cityTextField text];
    NSString *state = [stateTextField text];
    
    DCCreateLocationRequest *request = [[DCCreateLocationRequest alloc] initRequestWithTitle:title street:street StreetNumber:streetNum city:city andState:state];
    [self setRequest:request];
}

@end
