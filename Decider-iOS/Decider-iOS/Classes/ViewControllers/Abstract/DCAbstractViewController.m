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
    infoOverlay = [[DCInfoOverlay alloc] initOverlayInView:self.view atX:160 andY:140];
    errorOverlay = [[DCErrorOverlay alloc] initOverlayInView:self.view atX:160 andY:140];
    
    _fbid = NULL;
    _eid = NULL;
    _lid = NULL;
    _tdid = NULL;
}

#pragma mark -
#pragma mark Overlay Methods

-(void)displayError:(NSString*)errorStr {
    [errorOverlay setText:errorStr];
    [errorOverlay display];
}

-(void)displayInfo:(NSString*)infoStr {
    [infoOverlay setText:infoStr];
    [infoOverlay display];
}

#pragma mark -
#pragma mark Request Methods

-(void)startRequest:(DCAbstractRequest*)request withInfo:(NSString*)infoStr {
    NSLog(@"Request made with info: %@",infoStr);
    
    [request setDelegate:self];
    if(infoOverlay != NULL && ![infoStr isEqualToString:@""]) [self displayInfo:infoStr];
    [request startRequest];
}

-(void)internetConnectionNotAvailableForRequest:(DCAbstractRequest *)request {
    NSLog(@"Intenet not available for request");
    [infoOverlay dismiss];
}

-(void)errorOccured:(NSError *)error duringRequest:(DCAbstractRequest *)request {
    NSLog(@"Request error occured: %@",[error localizedDescription]);
    [infoOverlay dismiss];
}

-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data {
    NSLog(@"Request completed");
    [infoOverlay dismiss];
}

#pragma mark -
#pragma mark Touch Methods

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
