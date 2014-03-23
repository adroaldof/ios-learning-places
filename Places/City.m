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

            [[NSNotificationCenter defaultCenter] postNotificationName:@"initWithJSONFinishLoading" object:Nil];

          } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error, id JSON) {
            NSLog(@"Error: %@", error.localizedDescription);
        }];

        [opearion start];
    }

    return self;
}

@end
