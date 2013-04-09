//
//  DCAbstractRequest.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DCRequestProtocol.h"

@interface DCAbstractRequest : NSObject <NSURLConnectionDataDelegate> {
@protected
    NSString *baseUrl;
    NSString *urlExt;
}
@property(nonatomic, assign) id <DCRequestDelegate> delegate;
@property(nonatomic, assign) BOOL isActive;
@property(nonatomic, strong) NSData *data;

/**
 * This method creates the abstract request and internally sets the base url
 * @return The abstract request object
 */
-(id)initRequest;

#pragma mark -
#pragma mark Info Methods

/**
 * This method returns a boolean indicating whether or not internet access is
 * available
 * @return Boolean indicating access to the internet
 */
+(BOOL)internetAvailable;

#pragma mark -
#pragma mark Options

/**
 * This method is overriden by subclasses to provide an authentication for the request
 * @param request - The request to provide authentication for
 */
-(void)authenticate:(NSMutableURLRequest*)request;

/**
 * This method is overriden by subcless to provide the HTTP request method
 * @param request - The request to set the HTTP method for
 */
-(void)method:(NSMutableURLRequest*)urlRequest;

#pragma mark -
#pragma mark Request Methods

/**
 * This method starts the request execution process
 */
-(void)startRequest;

/**
 * This method cancels request execution
 */
-(void)cancelRequest;

#pragma mark -
#pragma mark Encoding Methods

/**
 * This method takes NSData and turns it into a base 64 encoded string
 * @param theData - Data to encode
 * @return The encoded string
 */
+(NSString*)base64forData:(NSData*)theData;

@end
