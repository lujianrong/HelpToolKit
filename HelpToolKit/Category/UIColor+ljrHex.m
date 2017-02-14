//
//  UIColor+ljrHex.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "UIColor+ljrHex.h"

@implementation UIColor (ljrHex)

+ (UIColor *)ljr_colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:&rgbValue];
    
    return [[self class] _colorWithR:((rgbValue & 0xFF0000) >> 16) G:((rgbValue & 0xFF00) >> 8) B:(rgbValue & 0xFF) A:1.0];
}

+ (instancetype)_colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha {
    return [[self class] colorWithRed:red /255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}

+ (UIColor *)ljr_randomColor {
    CGFloat red = random() % 256;
    CGFloat green = random() % 256;
    CGFloat blue = random() % 256;
    return [[self class] _colorWithR:red G:green B:blue A:1];
}
@end
