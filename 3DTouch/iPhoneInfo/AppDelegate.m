//
//  AppDelegate.m
//  iPhoneInfo
//
//  Created by saifing_82 on 15/10/20.
//  Copyright © 2015年 JamesGu. All rights reserved.
//

#import "AppDelegate.h"
#import "PhoneInfoManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIMutableApplicationShortcutItem *shortItem1 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"1" localizedTitle:@"对！没错！"];
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"Image1"];
    shortItem1.icon = icon1;
    
    UIMutableApplicationShortcutItem *shortItem2 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"2" localizedTitle:@"我就是"];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"Image2"];
    shortItem2.icon = icon2;
    
    UIMutableApplicationShortcutItem *shortItem3 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"3" localizedTitle:@"一台完美的"];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"Image3"];
    shortItem3.icon = icon3;
    
    UIMutableApplicationShortcutItem *shortItem4 = [[UIMutableApplicationShortcutItem alloc] initWithType:@"4" localizedTitle:[PhoneInfoManager getCurrentDeviceModel]];
    UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"Image4"];
    shortItem4.icon = icon4;
    
    NSArray *shortItems = [[NSArray alloc] initWithObjects:shortItem4, shortItem3, shortItem2, shortItem1, nil];
    NSLog(@"%@", shortItems);
    [[UIApplication sharedApplication] setShortcutItems:shortItems];
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

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"讨厌，你又点了人家" message:@"你要对我负责！！！" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"我会的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"我一定会的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:okAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
}

@end
