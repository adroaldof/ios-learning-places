//
//  City.m
//  Places
//
//  Created by Adro on 22/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "City.h"
#import "AFJSONRequestOperation.h"

@implementation City

- (id)init
{
    self = [self initWithJSON];
    return self;
}

- (id)initWithJSON
{
    self = [super init];

    if (self) {
        NSURL *url = [[NSURL alloc] initWithString:@"http://localhost:8080/Places/get/cities"];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];

        AFJSONRequestOperation *opearion = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
          success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {

            self.name = JSON[@"name"];
            self.state = JSON[@"state"];
            self.population = JSON[@"population"];
            self.notes = @"No notes yet";

            [[NSNotificationCenter defaultCenter] postNotificationName:@"initWithJSONFinishLoading" object:Nil];

          } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
            NSLog(@"Error: %@", error.localizedDescription);
        }];

        [opearion start];
    }

    return self;
}

+ (NSString *)getPathToArchive
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *docsDir = [paths objectAtIndex:0];
    return [docsDir stringByAppendingPathComponent:@"city.model"];
}

+ (void)saveCity:(City *)aCity
{
    [NSKeyedArchiver archiveRootObject:aCity toFile:[City getPathToArchive]];
}

+ (City *)getCity
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:[City getPathToArchive]];
}

- (City *)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.state = [aDecoder decodeObjectForKey:@"state"];
        self.population = [aDecoder decodeObjectForKey:@"population"];
        self.notes = [aDecoder decodeObjectForKey:@"notes"];
    }

    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.state forKey:@"state"];
    [aCoder encodeObject:self.population forKey:@"population"];
    [aCoder encodeObject:self.notes forKey:@"notes"];
}

@end
