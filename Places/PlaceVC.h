//
//  ViewController.h
//  Places
//
//  Created by Adro on 20/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Place.h"
#import "City.h"

@interface PlaceVC : UIViewController

@property (strong, nonatomic) Place *place;
@property (strong, nonatomic) City *city;
@property (strong, nonatomic) UILabel *placeNameLabel;
@property (strong, nonatomic) UILabel *placeDescriptionLabel;

- (void)makeThisPlaceInteresting:(id)sender;

@end
