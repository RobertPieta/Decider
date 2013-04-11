//
//  DCAbstractViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCRequestProtocol.h"

@interface DCAbstractViewController : UIViewController <DCRequestDelegate>
@property(nonatomic, strong) NSString *fbid;
@property(nonatomic, strong) NSString *eid;
@property(nonatomic, strong) NSString *lid;
@property(nonatomic, strong) NSString *tdid;

#pragma mark -
#pragma mark Overlay Methods

-(void)displayError:(NSString*)errorStr;
-(void)displayInfo:(NSString*)infoStr;

#pragma mark -
#pragma mark Request Methods

-(void)startRequest:(DCAbstractRequest*)request withInfo:(NSString*)infoStr;
-(void)internetConnectionNotAvailableForRequest:(DCAbstractRequest *)request;
-(void)errorOccured:(NSError *)error duringRequest:(DCAbstractRequest *)request;
-(void)requestCompleted:(DCAbstractRequest *)request withData:(NSData *)data;

@end
