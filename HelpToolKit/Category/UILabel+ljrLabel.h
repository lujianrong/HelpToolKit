//
//  UILabel+ljrLabel.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UILabel (ljrLabel)

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text;

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font;

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor;

+ (UILabel *)ljr_labelWithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlign backgroundColor:(UIColor *)backgroundColor numberOfLines:(NSInteger)numberOfLines;

@end
NS_ASSUME_NONNULL_END
