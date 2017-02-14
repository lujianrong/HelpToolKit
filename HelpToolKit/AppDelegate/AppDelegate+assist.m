//
//  AppDelegate+assist.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "AppDelegate+assist.h"
#import "Root_TabBarController.h"

@implementation AppDelegate (assist)

- (void)assist_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = ({
        UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        window.backgroundColor = [UIColor whiteColor];
        
        Root_TabBarController *root = [[Root_TabBarController alloc] init];
        window.rootViewController = root;
        window;
    });
    
    [self.window makeKeyAndVisible];
    
    if ([self isNewVersion]) {
        NSLog(@" 是新版本 ");
    } else {
        NSLog(@" 不是新版本 ");
    }

}

- (BOOL)isNewVersion {
    NSString *key = @"CFBundleShortVersionString";
    NSString *lastVersion    = [[NSUserDefaults standardUserDefaults]objectForKey:key];
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    if ([currentVersion isEqualToString:lastVersion]) {
        return NO;
    } else {
        [[NSUserDefaults standardUserDefaults] setObject:currentVersion forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return YES;
    }
}

@end
