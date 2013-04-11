//
//  DCCreateLocationViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractCreateViewController.h"

@interface DCCreateLocationViewController : DCAbstractCreateViewController {
    IBOutlet UITextField *titleTextField;
    IBOutlet UITextField *streetTextField;
    IBOutlet UITextField *streetNumTextField;
    IBOutlet UITextField *cityTextField;
    IBOutlet UITextField *stateTextField;
}

@end
