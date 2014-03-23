//
//  CityVC.h
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityView.h"

@interface CityVC : UIViewController

@property (strong, nonatomic) City *city;
@property (strong, nonatomic) CityView *cityView;

@end
