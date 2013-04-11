//
//  DCRegistrationViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCRegistrationViewController.h"

#import "DCRegistrationRequest.h"

@interface DCRegistrationViewController() {
@private
    DCRegistrationRequest *_request;
}

@end

@implementation DCRegistrationViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)cancelPushed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

-(IBAction)registerPushed:(id)sender {
    NSString *email = [emailTextField text];
    NSString *password = [passwordTextField text];
    NSString *nickname = [nicknameTextField text];
    
    _request = [[DCRegistrationRequest alloc] initRequestWithEmail:email password:password andName:nickname];
    [self startRequest:_request withInfo:@"Registering"];
}

#pragma mark -
#pragma mark Request Methods

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    [super requestCompleted:request withData:data];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
