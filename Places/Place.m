//
//  Place.m
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "Place.h"

@implementation Place

- (id)init
{
    self = [self initWithName:@"Default Name" description:@"Default Description"];
    return self;
}

- (id)initWithName:(NSString *)aName
       description:(NSString *)aDescription
{
    self = [super init];

    if (self) {
        self.name = aName;
        self.description = aDescription;
    }

    return self;
}

@end
