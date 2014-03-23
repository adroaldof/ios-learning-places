//
//  CityVC.m
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "CityVC.h"

@interface CityVC ()

@end

@implementation CityVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"City";
        self.tabBarItem.image = [UIImage imageNamed:@"direction-path"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.city = [[City alloc] init];

}

- (void)loadView
{
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.cityView = [[CityView alloc] initWithFrame:viewRect];
    self.view = self.cityView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
