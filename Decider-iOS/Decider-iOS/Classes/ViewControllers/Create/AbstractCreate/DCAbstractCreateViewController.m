//
//  DCAbstractCreateViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractCreateViewController.h"

@interface DCAbstractCreateViewController() {
@private
}

@end

@implementation DCAbstractCreateViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark Create Request Methods

-(void)updateRequest {
    
}

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    [super requestCompleted:request withData:data];
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)cancelPushed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

-(IBAction)submitPushed:(id)sender {
    [self updateRequest];
    [self startRequest:_request withInfo:@"Submiting"];
}

@end
