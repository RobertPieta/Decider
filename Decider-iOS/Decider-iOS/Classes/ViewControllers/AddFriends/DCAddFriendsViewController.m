//
//  DCAddFriendsViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAddFriendsViewController.h"

#import "DCAddEmailsToEventRequest.h"

@interface DCAddFriendsViewController() {
@private
    DCAddEmailsToEventRequest *_request;
}

@end

@implementation DCAddFriendsViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)submitPushed:(id)sender {
    NSString *email = [emailTextField text];
    
    _request = [[DCAddEmailsToEventRequest alloc] initRequestWithEventId:[self eid] andEmail:email];
    [self startRequest:_request withInfo:@"Adding email"];
}

@end
