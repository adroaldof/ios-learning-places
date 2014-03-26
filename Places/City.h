//
//  City.h
//  Places
//
//  Created by Adro on 22/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject <NSCoding>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *state;
@property (strong, nonatomic) NSNumber *population;
@property (strong, nonatomic) NSString *notes;

- (id)initWithJSON;
+ (NSString *)getPathToArchive;
- (City *)initWithCoder:(NSCoder *)aDecoder;
- (void)encodeWithCoder:(NSCoder *)aCoder;

@end
