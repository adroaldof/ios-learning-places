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

    self.notesLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 280, 40)];
    self.notesLabel.text = @"Edit note";
    [self.scrollView addSubview:self.notesLabel];

    self.notesField = [[UITextField alloc] initWithFrame:CGRectMake(10, 130, 290, 30)];
    self.notesField.keyboardType = UIKeyboardTypeDefault;
    self.notesField.borderStyle = UITextBorderStyleRoundedRect;
    self.notesField.delegate = self;
    [self.scrollView addSubview:self.notesField];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
