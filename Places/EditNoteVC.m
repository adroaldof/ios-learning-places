//
//  EditNoteVC.m
//  Places
//
//  Created by Adro on 25/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "EditNoteVC.h"

@interface EditNoteVC ()

@end

@implementation EditNoteVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Edit Note";

        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(saveNoteWhenClossing)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.185 green:0.64 blue:0.66 alpha:1.0];

    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 520);
    [self.view addSubview:self.scrollView];

    self.cityNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    self.cityNameLabel.text = @"CITY";
    self.cityNameLabel.textColor = [UIColor whiteColor];
    self.cityNameLabel.textAlignment = NSTextAlignmentCenter;
    self.cityNameLabel.font = [UIFont boldSystemFontOfSize:30.0];
    self.cityNameLabel.backgroundColor = [UIColor blackColor];
    [self.scrollView addSubview:self.cityNameLabel];

    self.notesLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 280, 40)];
    self.notesLabel.text = @"Edit note";
    [self.scrollView addSubview:self.notesLabel];

    self.notesField = [[UITextField alloc] initWithFrame:CGRectMake(10, 130, 290, 30)];
    self.notesField.keyboardType = UIKeyboardTypeDefault;
    self.notesField.borderStyle = UITextBorderStyleRoundedRect;
    self.notesField.delegate = self;
    [self.scrollView addSubview:self.notesField];

    UIButton *saveNotes = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    saveNotes.frame = CGRectMake(10, 170, 290, 30);
    [saveNotes setTitle:@"Save Note" forState:UIControlStateNormal];
    [saveNotes addTarget:self action:@selector(savePressed) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollView addSubview:saveNotes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.cityNameLabel.text = self.city.name;
    self.notesField.text = self.city.notes;
}

- (void)savePressed
{
    self.city.notes = self.notesField.text;
    [City saveCity:self.city];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.city.notes = self.notesField.text;
    [City saveCity:self.city];
    [textField resignFirstResponder];
    return YES;
}

- (void)saveNoteWhenClossing
{
    self.city.notes = self.notesField.text;
    [City saveCity:self.city];
}

- (void)cancelPressed
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
