//
//  AppDelegate.m
//  StarPictureVC
//
//  Created by duogaojituan on 16/8/30.
//  Copyright © 2016年 duogaojituan. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "StarViewPictrue.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    ViewController* root = [[ViewController alloc]init];
    self.m_nav = [[UINavigationController alloc]initWithRootViewController:root];
    self.window.rootViewController = self.m_nav ;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    //是否出现引导页
    [self IsGuidePage];

    // Override point for customization after application launch.
    return YES;
}
//
-(void)IsGuidePage{
    
    NSString * Version = [[shareDelegate  shareNSUserDefaults]  objectForKey:@"AppVersion"];
    if (Version == nil) {
        Version = @"";
    }
    //获取plist里面的版本号
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    //CFShow(CFBridgingRetain(infoDictionary));
    //app应用版本号
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    //版本号不想等时执行 括号内代码
    if ( ![Version isEqualToString:app_Version]  ) {
        
        StarViewPictrue * star = [[StarViewPictrue alloc]init];
        [self.window addSubview:star];
        [[shareDelegate shareNSUserDefaults] setObject:app_Version forKey:@"AppVersion"];
    }
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
