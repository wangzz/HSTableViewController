//
//  AppDelegate.m
//  HSTablebarController
//
//  Created by wangzz on 12-11-24.
//  Copyright (c) 2012年 wangzz. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "SecondViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    UITabBarController    *tabBar = [[[UITabBarController alloc] init] autorelease];
    
//    tabBar.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"barimage"]];

//    [tabBar.tabBar setBackgroundImage:[UIImage imageNamed:@"barimage"]];
    
//    UIImageView* image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"barimage"]];
//	//image.frame = CGRectOffset(image.frame, 0, 5);
//	image.frame = CGRectMake(0, 431, 320,49);
//	[tabBar.tabBar addSubview:image];
    
    UIImage *tabBackground = [[UIImage imageNamed:@"barimage"]
                              resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    [[UITabBar appearance] setBackgroundImage:tabBackground];
    
    ViewController  *viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    SecondViewController    *secondController = [[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil] autorelease];
    
    NSArray *arr = [NSArray arrayWithObjects:viewController,secondController, nil];
    tabBar.viewControllers = arr;
    
    self.window.rootViewController = tabBar;
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
