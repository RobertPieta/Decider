//
//  DCAbstractCreateViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@class DCAbstractRequest;
@interface DCAbstractCreateViewController : DCAbstractViewController
@property(nonatomic, strong) DCAbstractRequest *request;

#pragma mark -
#pragma mark Create Request Methods

-(void)updateRequest;

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)cancelPushed:(id)sender;
-(IBAction)submitPushed:(id)sender;

@end
