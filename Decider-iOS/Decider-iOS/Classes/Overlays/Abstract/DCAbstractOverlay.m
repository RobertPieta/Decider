//
//  DCAbstractOverlay.m
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractOverlay.h"
#import <QuartzCore/QuartzCore.h>

@interface DCAbstractOverlay() {
@private
    UIView *overlay;
    UIView *background;
    
    UILabel *textLabel;
    UIActivityIndicatorView *indicator;
}
@end;

@implementation DCAbstractOverlay

-(id)initOverlayInView:(UIView*)view atX:(int)x andY:(int)y {
    if(self = [super init]) {
        _view = view;
        _x = x;
        _y = y;
        
        _duration = 2.0f;
        _text = @"";
        
        overlay = [[UIView alloc] initWithFrame:CGRectMake(160, 600, 100, 100)];
        [overlay setCenter:CGPointMake(160, 600)];
        [overlay setBackgroundColor:[UIColor blackColor]];
        [overlay setAlpha:0.85f];
        [overlay.layer setCornerRadius:7.5];
        
        background = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [background setBackgroundColor:[UIColor blackColor]];
        [background setAlpha:0.0f];
        
        indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        [indicator setCenter:CGPointMake(50, 60)];
        [overlay addSubview:indicator];
        [indicator startAnimating];
        
        textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
        [textLabel setLineBreakMode:NSLineBreakByWordWrapping];
        [textLabel setTextColor:[UIColor whiteColor]];
        [textLabel setBackgroundColor:[UIColor clearColor]];
        [textLabel setFont:[UIFont systemFontOfSize:12.0f]];
        [textLabel setNumberOfLines:2];
        [textLabel setTextAlignment:NSTextAlignmentCenter];
        [textLabel setText:@"Loading Test"];
        [overlay addSubview:textLabel];
    }
    return self;
}

#pragma mark -
#pragma mark Display Methods

-(void)display {
    NSLog(@"Display overlay");
    
    [textLabel setText:_text];
    [_view addSubview:background];
    [_view addSubview:overlay];
    
    [UIView animateWithDuration:0.3f animations:^{
        [overlay setCenter:CGPointMake(_x, _y)];
        [background setAlpha:0.5f];
    }];
}

-(void)displayForDuration:(float)duration {
    
}

-(void)dismiss {
    [UIView animateWithDuration:0.3f delay:0.0f options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        [overlay setCenter:CGPointMake(160, 600)];
        [background setAlpha:0.0f];
    } completion:^(BOOL finished) {
        [overlay removeFromSuperview];
        [background removeFromSuperview];
    }];

}

@end
