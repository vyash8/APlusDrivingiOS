//
//  CarStoppedCell.h
//  APlusDriving
//
//  Created by Yash Varma on 1/10/15.
//  Copyright (c) 2015 APlusDriving. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CarStoppedCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *turnedOffLabel;
@property (weak, nonatomic) IBOutlet UILabel *tripTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceTravaledLabel;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property CGFloat lat;
@property CGFloat lng;

@end
