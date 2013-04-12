//
//  DCErrorOverlay.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCErrorOverlay.h"

@implementation DCErrorOverlay

#pragma mark -
#pragma mark Display Methods

-(void)display {
    [super display];
    
    [self performSelector:@selector(dismiss) withObject:self afterDelay:2.0f];
}

@end
