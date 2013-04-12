//
//  DCHomeViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@interface DCHomeViewController : DCAbstractViewController {
    IBOutlet UIButton *registerButton;
    IBOutlet UITextField *emailTextField;
    IBOutlet UITextField *passwordTextField;
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)loginPushed:(id)sender;
-(IBAction)registerPushed:(id)sender;

@end
