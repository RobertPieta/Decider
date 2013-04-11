//
//  DCEventListViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractListViewController.h"

@interface DCEventListViewController : DCAbstractListViewController

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)logoutPushed:(id)sender;
-(IBAction)newEventPushed:(id)sender;

@end
