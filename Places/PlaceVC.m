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
    }

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

	self.placeNameLabel = [[UILabel alloc] init];
    self.placeNameLabel.frame = CGRectMake(20, 60, 280, 40);
    [self.view addSubview:self.placeNameLabel];

    self.placeDescriptionLabel = [[UILabel alloc] init];
    self.placeDescriptionLabel.frame = CGRectMake(20, 120, 280, 20);
    [self.view addSubview:self.placeDescriptionLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.placeNameLabel.text = self.place.name;
    self.placeDescriptionLabel.text = self.place.description;
}

@end
