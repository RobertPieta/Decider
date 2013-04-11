//
//  DCCreateEventViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractCreateViewController.h"

@interface DCCreateEventViewController : DCAbstractCreateViewController {
    IBOutlet UITextField *titleTextField;
    IBOutlet UITextView *descriptionTextView;
}

@end
