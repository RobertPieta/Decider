//
//  DCRegistrationViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@interface DCRegistrationViewController : DCAbstractViewController {
    IBOutlet UITextField *emailTextField;
    IBOutlet UITextField *passwordTextField;
    IBOutlet UITextField *confirmPasswordTextField;
    IBOutlet UITextField *nicknameTextField;
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)registerPushed:(id)sender;

@end
