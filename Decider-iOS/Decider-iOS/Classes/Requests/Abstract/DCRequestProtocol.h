//
//  DCRequestProtocol.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * This delegate is for all request objects, and the callbacks provided indicate
 * the three major outcomes of a request after startRequest is called
 */

@class DCAbstractRequest;
@protocol DCRequestDelegate <NSObject>
@optional
/**
 * This callback is called if an internet connection is not available at the
 * start of the request
 * @param request - The request which could not connect to the internet
 */
-(void)internetConnectionNotAvailableForRequest:(DCAbstractRequest*)request;

/**
 * This callback is called if any error occured during the request
 * @param error - The error that occured
 * @param request - The request during which the error occured
 */
-(void)errorOccured:(NSError*)error duringRequest:(DCAbstractRequest*)request;

/**
 * This callback is called when the request completes successfully
 * @param request - The request during which the error occured
 * @param data - The data the request downloaded
 */
-(void)requestCompleted:(DCAbstractRequest*)request withData:(NSData*)data;
@end

