//
//  UILabel+ljrLabel.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "UILabel+ljrLabel.h"

@implementation UILabel (ljrLabel)

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text {
    return [self ljr_labelWithFrame:frame text:text font:[UIFont systemFontOfSize:14.0]];
}

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font {
    return [self ljr_labelWithFrame:frame text:text font:font textColor:[UIColor blackColor]];
}

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor {
    return [self ljr_labelWithFrame:frame text:text font:font textColor:textColor textAlignment:NSTextAlignmentLeft backgroundColor:[UIColor whiteColor] numberOfLines:1];
}

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlign backgroundColor:(UIColor *)backgroundColor  numberOfLines:(NSInteger)numberOfLines{
    UILabel *lab = [[UILabel alloc] initWithFrame:frame];
    lab.text = text;
    lab.font = font;
    lab.textColor = textColor;
    lab.textAlignment = textAlign;
    lab.backgroundColor = backgroundColor;
    lab.adjustsFontSizeToFitWidth = YES;
    lab.numberOfLines = numberOfLines;
    return lab;
}

@end
