//
//  Place.h
//  Places
//
//  Created by Adro on 21/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject <NSCoding>

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;

- (id)initWithName:(NSString *)aName description:(NSString *)aDescription;

- (NSString *)getPathToArchive;
- (Place *)initWithCoder:(NSCoder *)aDecoder;
- (void)encodeWithCoder:(NSCoder *)aCoder;


@end
