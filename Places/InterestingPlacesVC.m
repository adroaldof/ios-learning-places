//
//  InterestingPlacesVC.m
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "InterestingPlacesVC.h"

@interface InterestingPlacesVC ()

@end

@implementation InterestingPlacesVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Interesting Places";
        self.tabBarItem.image = [UIImage imageNamed:@"star"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
