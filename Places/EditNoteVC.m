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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
