//
//  EditNoteVC.h
//  Places
//
//  Created by Adro on 25/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface EditNoteVC : UIViewController

@property (strong, nonatomic) City *city;

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UILabel *notesLabel;
@property (strong, nonatomic) UITextField *notesField;

- (void)savePressed;

@end
