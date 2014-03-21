//
//  ViewController.m
//  Places
//
//  Created by Adro on 20/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "PlaceVC.h"

@interface PlaceVC ()

@end

@implementation PlaceVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Places";
        self.tabBarItem.image = [UIImage imageNamed:@"map-pin"];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
