//
//  City.h
//  Places
//
//  Created by Adro on 22/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSNumber *population;

- (id)initWithJSON;

@end
