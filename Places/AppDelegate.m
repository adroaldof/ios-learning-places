//
//  AppDelegate.m
//  Places
//
//  Created by Adro on 20/03/14.
//  Copyright (c) 2014 Adro. All rights reserved.
//

#import "AppDelegate.h"
#import "PlaceTableVC.h"
#import "InterestingPlacesTableVC.h"
#import "CityVC.h"
#import "City.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    PlaceTableVC *placeTableVC = [[PlaceTableVC alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *placeTableNavCtrl = [[UINavigationController alloc] initWithRootViewController:placeTableVC];

    InterestingPlacesTableVC *interestingPlacesTableVC = [[InterestingPlacesTableVC alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *interestingPlacesTableNavCtrl = [[UINavigationController alloc] initWithRootViewController:interestingPlacesTableVC];

    CityVC *cityVC = [[CityVC alloc] init];
    UINavigationController *cityNavCtrl = [[UINavigationController alloc] initWithRootViewController:cityVC];

    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:@[placeTableNavCtrl, interestingPlacesTableNavCtrl, cityNavCtrl] animated:YES];

    City *city = [City getCity];
    if (city && city.interestingPlaces.count > 0) {
        [tabBarController.tabBar.items[1] setBadgeValue:[NSString stringWithFormat:@"%lu", city.interestingPlaces.count]];
    }

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
