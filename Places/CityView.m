//
//  CityView.m
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "CityView.h"

@implementation CityView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0.185 green:0.64 blue:0.66 alpha:1.0];

        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, self.frame.size.width, 80)];
        self.nameLabel.text = @"CITY";
        self.nameLabel.textColor = [UIColor whiteColor];
        self.nameLabel.textAlignment = NSTextAlignmentCenter;
        self.nameLabel.font = [UIFont boldSystemFontOfSize:30.0];
        self.nameLabel.backgroundColor = [UIColor blackColor];
        [self addSubview:self.nameLabel];

        self.stateLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, self.frame.size.width, 30)];
        self.stateLabel.text = @"State Label";
        [self addSubview:self.stateLabel];

        self.populationLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 180, self.frame.size.width, 30)];
        self.populationLabel.text = @"Population Label";
        [self addSubview:self.populationLabel];
    }

    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
