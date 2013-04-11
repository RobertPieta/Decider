//
//  DCCreateEventViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCCreateEventViewController.h"
#import "DCCreateEventRequest.h"

@interface DCCreateEventViewController() {
@private
}

@end

@implementation DCCreateEventViewController

#pragma mark -
#pragma mark Create Request Methods

-(void)updateRequest {
    NSString *title = [titleTextField text];
    NSString *description = [descriptionTextView text];
    
    DCCreateEventRequest *request = [[DCCreateEventRequest alloc] initRequestWithAdminFacebookId:[self fbid] title:title andDescription:description];
    [self setRequest:request];
}

@end
