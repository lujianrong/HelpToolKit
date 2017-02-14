//
//  UIBarButtonItem+ljrBack.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "UIBarButtonItem+ljrBack.h"




@interface CustomBackBtn : UIButton
@end
@implementation CustomBackBtn
//- (void)layoutSubviews {
//    [super layoutSubviews];
//    CGFloat y = (self.h - 20 )*0.5;
//    self.imageView.frame = CGRectMake(0, y, 20, 20);
//}
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGFloat h = 20;
    CGFloat w = h;
    CGFloat y = (contentRect.size.height - h) * 0.5;
    return CGRectMake(-5, y, w, h);
}

@end

@implementation UIBarButtonItem (ljrBack)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action {
    CustomBackBtn *backBtn = ({
        UIImage *image = [UIImage imageNamed:@"nav_back_sharp_black"];
        CGRect frame = CGRectMake(0, 0, 50, 30);
        CustomBackBtn *backBtn = [CustomBackBtn buttonWithType:UIButtonTypeCustom];
        [backBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        [backBtn setImage:image forState:UIControlStateNormal];
        backBtn.frame = frame;
        backBtn;
    });
    return [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage {
    UIButton *btn = ({
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
        btn.size = btn.currentBackgroundImage.size;
        btn;
    });
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}

@end
