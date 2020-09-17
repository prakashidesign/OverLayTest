//
//  AppDelegate.m
//  OverLayProject
//
//  Created by iDesignA7 on 17/09/20.
//  Copyright © 2020 iDesignA7. All rights reserved.
//

#import "AppDelegate.h"
#import "OverLayViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    OverLayViewController *blankViewController = [OverLayViewController new];
    blankViewController.view.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    [self.window.rootViewController presentViewController:blankViewController animated:NO completion:NULL];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    if ([self.window.rootViewController isKindOfClass:[OverLayViewController class]]) {
        [self.window.rootViewController dismissViewControllerAnimated:false completion:nil];
    }
}

@end
