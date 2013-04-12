//
//  DCButtonStyle.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/11/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "UIButton+Style.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIButton (Style)

-(void)style {
    [self setBackgroundColor:[UIColor whiteColor]];
    
    [self.layer setCornerRadius:5.0f];

    [self.layer setShadowColor:[UIColor grayColor].CGColor];
    [self.layer setShadowRadius:1.0f];
    [self.layer setShadowOffset:CGSizeMake(3.0, 3.0)];
    [self.layer setShadowOpacity:0.5f];
}


@end
