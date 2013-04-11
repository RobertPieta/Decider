//
//  DCCreateTodoViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractCreateViewController.h"

@interface DCCreateTodoViewController : DCAbstractCreateViewController {
    IBOutlet UITextView *titleTextView;
    IBOutlet UITextField *descriptionTextField;
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)cancelPushed:(id)sender;
-(IBAction)createLocationPushed:(id)sender;

@end
