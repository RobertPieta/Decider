//
//  DCAbstractViewController.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractViewController.h"

#import "DCInfoOverlay.h"
#import "DCErrorOverlay.h"

#import "DCAbstractRequest.h"

@interface DCAbstractViewController() {
@private
    DCInfoOverlay *infoOverlay;
    DCErrorOverlay *errorOverlay;
}

@end

@implementation DCAbstractViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    infoOverlay = [[DCInfoOverlay alloc] initOverlayInView:self.view atX:0 andY:0];
    errorOverlay = [[DCErrorOverlay alloc] initOverlayInView:self.view atX:0 andY:0];
    
    _fbid = NULL;
    _eid = NULL;
    _lid = NULL;
    _tdid = NULL;
}

#pragma mark -
#pragma mark Overlay Methods

-(void)displayError:(NSString*)errorStr {
    [errorOverlay setText:errorStr];
}

-(void)displayInfo:(NSString*)infoStr {
    [infoOverlay setText:infoStr];
    [infoOverlay display];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest:(DCAbstractRequest*)request withInfo:(NSString*)infoStr {
    [request setDelegate:self];
    if(infoOverlay != NULL && [infoStr isEqualToString:@""]) [self displayInfo:infoStr];
    [request startRequest];
}

-(void)internetConnectionNotAvailableForRequest:(DCAbstractRequest *)request {
    [infoOverlay dismiss];
}

-(void)errorOccured:(NSError *)error duringRequest:(DCAbstractRequest *)request {
    [infoOverlay dismiss];
}

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    [infoOverlay dismiss];
}

@end
