//
//  DCAbstractOverlay.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCAbstractOverlay : UIView
@property(nonatomic, weak, readonly) UIView *view;
@property(nonatomic, assign, readonly) int x;
@property(nonatomic, assign, readonly) int y;

@property(nonatomic, assign) float duration;
@property(nonatomic, strong) NSString *text;

/**
 * This method creates the overlay view in a parent view at an x and y
 * @param view - The parent view
 * @param x - The x coordinate of the upper left hand corner
 * @param y - The y coordinate of the upper left hand corner
 * @return A new overlay object
 */
-(id)initOverlayInView:(UIView*)view atX:(int)x andY:(int)y;

#pragma mark -
#pragma mark Display Methods

/**
 * This method displays the overlay for the defaults duration (2s)
 */
-(void)display;

/**
 * This method displays the overlay for the given duration
 * @param duration - The duration that the messaage will be on screen
 */
-(void)displayForDuration:(float)duration;

/**
 * This method dismisses the overlay view from the parent view
 */
-(void)dismiss;

@end
