//
//  DCTodoDetailViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCTodoDetailViewController.h"
#import "DCTodoModel.h"
#import "DCLocationModel.h"

@interface DCTodoDetailViewController() {
@private
}

@end

@implementation DCTodoDetailViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    DCTodoModel *todo = (DCTodoModel*)[self model];
    
    [titleLabel setText:[todo title]];
    [ptsLabel setText:[todo pts]];
    [descriptionTextView setText:[todo description]];
    [locationLabel setText:[[todo location] description]];
}

@end
