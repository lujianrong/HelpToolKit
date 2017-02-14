//
//  AppDelegate+assist.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (assist)

/**
 没有实现
 */
- (void)assist_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

/**
 判断是否是新版本

 @return YES / NO
 */
- (BOOL)isNewVersion;
@end
