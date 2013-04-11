//
//  DCHomeViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCHomeViewController.h"

#import "DCUserModel.h"
#import "DCPartialEventModel.h"

#import "DCAbstractRequest.h"
#import "DCAuthenticationRequest.h"
#import "DCEventsForUserRequest.h"

#import "DCEventListViewController.h"

@interface DCHomeViewController() {
@private
    NSArray *partialEvents;
    
    NSString *fbid;
    DCAbstractRequest *_request;
}
@end

@implementation DCHomeViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    partialEvents = NULL;
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)loginPushed:(id)sender {
    NSString *email = [emailTextField text];
    NSString *password = [passwordTextField text];
    
    _request = [[DCAuthenticationRequest alloc] initRequestWithEmail:email andPassword:password];
    [self startRequest:_request withInfo:@"Logging In"];
}

-(IBAction)registerPushed:(id)sender {
    [self performSegueWithIdentifier:Segue_ToRegisterView sender:self];
}

#pragma mark -
#pragma mark Request Methods

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    if(partialEvents == NULL) {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        NSDictionary *userDict = dict[@"result"];
        DCUserModel *user = [[DCUserModel alloc] initWithJSONDictionary:userDict];
        fbid = [user fbid];
        
        _request = [[DCEventsForUserRequest alloc] initRequestWithFacebookId:fbid];
        [self startRequest:_request withInfo:@"Downloading Events"];
        
    }
    else {
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        
        NSDictionary *result = dict[@"result"];
        NSArray *partialEventModels = result[@"events"];
        
        partialEvents = [DCPartialEventModel modelsWithArrayOfJSONDictionaries:partialEventModels];
        [self performSegueWithIdentifier:Segue_ToEventListView sender:self];
    }
}

#pragma mark -
#pragma mark Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier] isEqualToString:Segue_ToEventListView]) {
        DCEventListViewController *destination = [segue destinationViewController];
        [destination setFbid:fbid];
        [destination setContents:partialEvents];
    }
}

@end
