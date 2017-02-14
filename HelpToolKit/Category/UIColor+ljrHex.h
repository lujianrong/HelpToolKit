//
//  UIColor+ljrHex.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ljrHex)

+ (UIColor *)ljr_colorFromHexString:(NSString *)hexString;
+ (UIColor *)ljr_randomColor;

@end
