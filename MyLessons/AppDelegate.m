//
//  AppDelegate.m
//  MyLessons
//
//  Created by Jerry on 16/01/16.
//  Copyright © 2016 Jerry. All rights reserved.
//

#import "AppDelegate.h"

//New classes included. And all futher comments you can find below.
#import "VJLove.h"
#import "VJPoetry.h"
#import "VJSalad.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog (@"================================================");
    NSLog (@"Lesson 1. 3 classes and methods.");
    NSLog (@"================================================");
    
    //First class from lesson 1. This class has method "loveIs" that shows us what is important in love and family life.
    NSLog(@"First Class LOVE");
    NSLog(@" ");
    
    VJLove * myLove = [[VJLove alloc]init];
    [myLove loveIs];
    
    //We move to second class. Its method shows us several lines from the poem of a russian poet.
    NSLog(@" ");
    NSLog(@"Second Class POETRY");
    NSLog(@" ");
    
    VJPoetry * myPoetry = [[VJPoetry alloc]init];
    [myPoetry writeMePoem];
    
    
    //Last class. It supposed to show us HowToDo a salad, but most of time while I was codding I was sleeping so as a good IT-girl I should remake it later. Hehe! Not sure if this may happen ever after ^_^
    NSLog(@" ");
    NSLog(@"Third Class SALAD");
    NSLog(@" ");
    
    VJSalad * mySalad = [[VJSalad alloc]init];
    [mySalad howToDo];
    
    NSLog(@" ");
    NSLog(@"Jerry.");

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
