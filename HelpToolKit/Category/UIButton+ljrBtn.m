//
//  UIButton+ljrBtn.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "UIButton+ljrBtn.h"
#import <objc/runtime.h>

static NSString *const ljr_BtnClickedKey = @"ljrBtnCategoryKey";

@implementation UIButton (ljrBtn)

+ (UIButton *)ljr_buttonWithFrame:(CGRect)frame target:(id)target selector:(SEL)selector {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;
}

+ (UIButton *)ljr_buttonWithFrame:(CGRect)frame clicked:(void (^)(UIButton *))clickedBlock {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(self, &ljr_BtnClickedKey, clickedBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    btn.frame = frame;
    return btn;
}

+ (void)clicked:(UIButton *)sender {
    void (^clickedBtnBlock)() = objc_getAssociatedObject(self, &ljr_BtnClickedKey);
    if (clickedBtnBlock != nil) {
        clickedBtnBlock(sender);
    }
}
@end
