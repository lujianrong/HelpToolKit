//
//  UIButton+ljrBtn.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ljrBtn)

+ (UIButton *)ljr_buttonWithFrame:(CGRect)frame target:(id)target selector:(SEL)selector;

+ (UIButton *)ljr_buttonWithFrame:(CGRect)frame clicked:(void (^)(UIButton *sender))clickedBlock;

@end
