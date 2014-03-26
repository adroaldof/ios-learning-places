//
//  CityVC.m
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "CityVC.h"
#import "EditNoteVC.h"

@interface CityVC ()

@end

@implementation CityVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"City";
        self.tabBarItem.image = [UIImage imageNamed:@"direction-path"];
        UIBarButtonItem *editNotes = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                                                                   target:self
                                                                                   action:@selector(editPressed)];
        self.navigationItem.rightBarButtonItem = editNotes;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.city = [[City alloc] init];

    self.view.backgroundColor = [UIColor colorWithRed:0.185 green:0.64 blue:0.66 alpha:1.0];

    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 520);
    [self.view addSubview:self.scrollView];

    self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    self.nameLabel.text = @"CITY";
    self.nameLabel.textColor = [UIColor whiteColor];
    self.nameLabel.textAlignment = NSTextAlignmentCenter;
    self.nameLabel.font = [UIFont boldSystemFontOfSize:30.0];
    self.nameLabel.backgroundColor = [UIColor blackColor];
    [self.scrollView addSubview:self.nameLabel];

    self.stateLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 110, 30)];
    self.stateLabel.text = @"State:";
    [self.scrollView addSubview:self.stateLabel];

    self.stateData = [[UILabel alloc] initWithFrame:CGRectMake(120, 90, 150, 30)];
    self.stateData.text = @"No data yet";
    [self.scrollView addSubview:self.stateData];

    self.populationLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 110, 30)];
    self.populationLabel.text = @"Population:";
    [self.scrollView addSubview:self.populationLabel];

    self.populationData = [[UILabel alloc] initWithFrame:CGRectMake(120, 120, 150, 30)];
    self.populationData.text = @"No data yet";
    [self.scrollView addSubview:self.populationData];

    self.notesLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 110, 30)];
    self.notesLabel.text = @"Notes:";
    [self.scrollView addSubview:self.notesLabel];

    self.notesData = [[UILabel alloc] initWithFrame:CGRectMake(120, 150, 150, 30)];
    self.notesData.text = @"No data yet";
    [self.scrollView addSubview:self.notesData];

    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(dataRetrieved)
                                                 name:@"initWithJSONFinishLoading"
                                               object:nil];
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
    self.nameLabel.text = self.city.name;
    self.stateData.text = self.city.state;
    self.populationData.text = [self.city.population description];
    self.notesData.text = self.city.notes;
}

- (void)editPressed
{
    EditNoteVC *editNoteVC = [[EditNoteVC alloc] init];
    editNoteVC.city = self.city;
    [self presentViewController:editNoteVC animated:YES completion:nil];
}
@end
