//
//  DCCreateTodoViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCCreateTodoViewController.h"
#import "DCCreateTodoRequest.h"

@interface DCCreateTodoViewController() {
@private
}

@end

@implementation DCCreateTodoViewController

-(void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)cancelPushed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}

-(IBAction)createLocationPushed:(id)sender {
    [self performSegueWithIdentifier:Segue_ToCreateLocationView sender:self];
}

#pragma mark -
#pragma mark Create Request Methods

-(void)updateRequest {
    NSString *title = [titleTextView text];
    NSString *description = [descriptionTextField text];
    
    DCCreateTodoRequest *request = [[DCCreateTodoRequest alloc] initRequestWithEventId:[self eid] title:title andDescription:description];
    [self setRequest:request];
}

@end
