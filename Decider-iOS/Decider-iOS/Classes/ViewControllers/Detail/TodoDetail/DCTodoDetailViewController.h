//
//  DCTodoDetailViewController.h
//  Decider-iOS
//
//  Created by Robert Pieta on 4/9/13.
//  Copyright (c) 2013 Robert Pieta. All rights reserved.
//

#import "DCAbstractDetailViewController.h"
#import <MapKit/MapKit.h>

@interface DCTodoDetailViewController : DCAbstractDetailViewController {
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *ptsLabel;
    IBOutlet UITextView *descriptionTextView;
    IBOutlet UILabel *locationLabel;
    
    IBOutlet MKMapView *mapView;
}

@end
