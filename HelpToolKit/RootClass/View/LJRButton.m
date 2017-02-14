//
//  LJRButton.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "LJRButton.h"

#define  kImage_WH       (20)
#define  kMargin           (5)
#define  kBtn_Title_Font  (14.0)

@interface BtnImgAtMostRight : LJRButton
@end

@interface BtnImgAtMostLeft : LJRButton
@end

@interface BtnImgAtCenterLeft : LJRButton
@end

@interface BtnImgAtCenterRight : LJRButton
@end

@interface BtnImgAtTop : LJRButton
@end

@interface BtnImgAtBottom : LJRButton
@end

#pragma mark
#pragma mark - -----------implementation--------------
@implementation BtnImgAtMostRight

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGFloat width = kImage_WH;
    CGFloat height = width;
    CGFloat x = contentRect.size.width - width - kMargin;
    CGFloat y = (contentRect.size.height - height) * 0.5;
    return CGRectMake(x, y, width, height);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGFloat width = contentRect.size.width - kImage_WH - kMargin  * 2;
    CGFloat x = kMargin;
    CGFloat height = contentRect.size.height;
    CGFloat y = (contentRect.size.height - height) * 0.5;
    return CGRectMake(x, y, width, height);
}

+ (BtnImgAtMostRight *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                              title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtMostRight *btn = [BtnImgAtMostRight buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;
}

@end

@implementation BtnImgAtMostLeft

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGFloat width = kImage_WH;
    CGFloat height = width;
    CGFloat x = kMargin;
    CGFloat y = (contentRect.size.height - height) * 0.5;
    return CGRectMake(x, y, width, height);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGFloat width = contentRect.size.width - kImage_WH - kMargin  * 2;
    CGFloat x = kImage_WH + kMargin;
    CGFloat height = contentRect.size.height;
    CGFloat y = (contentRect.size.height - height) * 0.5;
    return CGRectMake(x, y, width, height);
}

+ (BtnImgAtMostLeft *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                             title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtMostLeft *btn = [BtnImgAtMostLeft buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.textAlignment = NSTextAlignmentRight;
    
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;
}

@end

@implementation BtnImgAtCenterLeft

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat height = self.frame.size.height;
    
    CGFloat new_img_y = (height - kImage_WH) * 0.5;
    CGFloat new_img_x = self.imageView.frame.origin.x;
    self.imageView.frame = CGRectMake(new_img_x, new_img_y, kImage_WH, kImage_WH);
    
    CGFloat new_lab_y = (height - kImage_WH) * 0.5;
    CGFloat new_lab_x = new_img_x + self.imageView.frame.size.width + 3;
    CGFloat ori_lab_w = self.titleLabel.frame.size.width;
    self.titleLabel.frame = CGRectMake(new_lab_x, new_lab_y, ori_lab_w, kImage_WH);
}

+ (BtnImgAtCenterLeft *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                               title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtCenterLeft *btn = [BtnImgAtCenterLeft buttonWithType:UIButtonTypeCustom];
    
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;

}

@end

@implementation BtnImgAtCenterRight

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat height = self.frame.size.height;
    CGFloat ori_img_x = self.imageView.frame.origin.x;
    CGFloat ori_lab_w = self.titleLabel.frame.size.width;
    
    CGFloat new_lab_y = (height - kImage_WH) * 0.5;
    self.titleLabel.frame = CGRectMake(ori_img_x, new_lab_y, ori_lab_w, kImage_WH);
    CGFloat new_img_x = ori_img_x + ori_lab_w + 3;
    CGFloat new_img_y = (height - kImage_WH) * 0.5;
    self.imageView.frame = CGRectMake(new_img_x, new_img_y, kImage_WH, kImage_WH);
}

+ (BtnImgAtCenterRight *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                                title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtCenterRight *btn = [BtnImgAtCenterRight buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn layoutSubviews];//必须调用
    return btn;

}

@end

@implementation BtnImgAtTop

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat height = self.frame.size.height;
    CGFloat width = self.frame.size.width;
    self.imageView.frame = CGRectMake(0, 0, width, height - 20);
    CGFloat new_img_h = 15;
    CGFloat new_img_y = height - new_img_h;
    self.titleLabel.frame = CGRectMake(0, new_img_y, width, new_img_h);
}

+ (BtnImgAtTop *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                        title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtTop *btn = [BtnImgAtTop buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;
    
}

@end

@implementation BtnImgAtBottom

- (void)layoutSubviews {
    [super layoutSubviews];
    CGFloat height = self.frame.size.height;
    CGFloat width = self.frame.size.width;
    CGFloat new_lab_h = 15;
    self.titleLabel.frame = CGRectMake(0, 0, width, new_lab_h);
    CGFloat new_img_y = new_lab_h + kMargin;
    self.imageView.frame = CGRectMake(0, new_img_y, width, height - new_img_y);

}

+ (BtnImgAtBottom *)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                           title:(NSString *)title target:(id)target action:(SEL)action {
    BtnImgAtBottom *btn = [BtnImgAtBottom buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:kBtn_Title_Font];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.frame = frame;
    return btn;

}

@end

@interface LJRButton()
+ (instancetype)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                       title:(NSString *)title target:(id)target action:(SEL)action;
@end

@implementation LJRButton
+ (instancetype)btnWithFrame:(CGRect)frame normalImg:(NSString *)normalImg
                       title:(NSString *)title target:(id)target action:(SEL)action {
    return nil;
}

+ (instancetype)btnWithType:(LJRButtonType)type frame:(CGRect)frame normalImage:(NSString *)normalImage
                     target:(id)target action:(SEL)action title:(NSString *)title {
    switch (type) {
        case LJRButtonTypeImgAtMostRight: {
            return [BtnImgAtMostRight btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
        case LJRButtonTypeImgAtMostLeft: {
            return [BtnImgAtMostLeft btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
        case LJRButtonTypeImgAtCenterLeft: {
            return [BtnImgAtCenterLeft btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
        case LJRButtonTypeImgAtCenterRight: {
            return [BtnImgAtCenterRight btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
        case LJRButtonTypeImgAtTop: {
            return [BtnImgAtTop btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
        case LJRButtonTypeImgAtBottom: {
            return [BtnImgAtBottom btnWithFrame:frame normalImg:normalImage title:title target:target action:action];
        } break;
    }
}

@end

