//
//  ConfigDefines.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#ifndef ConfigDefines_h
#define ConfigDefines_h

///===========打印============
#pragma mark
#pragma mark - ---------打印调试----------
#ifdef DEBUG
#define DebugLog(s, ...) NSLog(@"\n%s(%d): \n%@", __FUNCTION__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define DebugLog(...)
#endif

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...)
#endif

///===========屏幕尺寸============
#pragma mark
#pragma mark - ---------屏幕尺寸----------
#define Screen_Width     ([UIScreen mainScreen].bounds.size.width)//屏幕宽度
#define Screen_Height     ([UIScreen mainScreen].bounds.size.height)//屏幕高
#define Screen_Bounds    [UIScreen mainScreen].bounds


///===========系统版本============
#pragma mark
#pragma mark - ---------系统版本----------
#define kSystem_Version   [[[UIDevice currentDevice] systemVersion] floatValue]


///===========颜色============
#pragma mark
#pragma mark - ---------颜色----------
#define RGB_Color(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]




#endif /* ConfigDefines_h */
