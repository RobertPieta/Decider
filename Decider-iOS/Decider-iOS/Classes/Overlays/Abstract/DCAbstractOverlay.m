//
//  DCAbstractOverlay.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractOverlay.h"

@implementation DCAbstractOverlay

-(id)initOverlayInView:(UIView*)view atX:(int)x andY:(int)y {
    if(self = [super init]) {
        _view = view;
        _x = x;
        _y = y;
        
        _duration = 2.0f;
        _text = @"";
    }
    return self;
}

#pragma mark -
#pragma mark Display Methods

-(void)display {
    
}

-(void)displayForDuration:(float)duration {
    
}

-(void)dismiss {
    
}

@end
