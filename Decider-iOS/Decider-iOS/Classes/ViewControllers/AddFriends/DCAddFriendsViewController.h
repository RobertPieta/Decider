//
//  DCAddFriendsViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

@interface DCAddFriendsViewController : DCAbstractViewController {
    IBOutlet UITextField *emailTextField;
}

#pragma mark -
#pragma mark IBAction Methods

-(IBAction)submitPushed:(id)sender;

@end
