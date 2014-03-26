//
//  CityVC.h
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityVC : UIViewController

@property (strong, nonatomic) City *city;
@property (strong, nonatomic) UIScrollView *scrollView;

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *stateLabel;
@property (strong, nonatomic) UILabel *stateData;
@property (strong, nonatomic) UILabel *populationLabel;
@property (strong, nonatomic) UILabel *populationData;
@property (strong, nonatomic) UILabel *notesLabel;
@property (strong, nonatomic) UILabel *notesData;

- (void)dataRetrieved;
- (void)enteringBackground;
- (void)enteringForeground;

@end
