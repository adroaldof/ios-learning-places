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

- (NSString *)getPathToArchive
{
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docsDir = [path objectAtIndex:0];
    return [docsDir stringByAppendingString:@"place.model"];
}

- (Place *)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.description = [aDecoder decodeObjectForKey:@"description"];
    }

    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.description forKey:@"description"];
}

@end
