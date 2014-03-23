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
}

- (void)dataRetrieved
{
    self.cityView.nameLabel.text = self.city.name;
    self.cityView.stateLabel.text = [[NSString alloc] initWithFormat:@"State: %@", self.city.state];
    self.cityView.populationLabel.text = [[NSString alloc] initWithFormat:@"Population: %@", [self.city.population description]];
}

@end
