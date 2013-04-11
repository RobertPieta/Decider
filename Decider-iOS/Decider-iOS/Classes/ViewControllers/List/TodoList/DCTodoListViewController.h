//
//  DCTodoListViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractListViewController.h"

@interface DCTodoListViewController : DCAbstractListViewController

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)descriptionPushed:(id)sender;
-(IBAction)addFriendsPushed:(id)sender;
-(IBAction)addTodoPushed:(id)sender;

@end
