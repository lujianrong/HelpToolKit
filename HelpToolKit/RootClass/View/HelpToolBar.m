//
//  HelpToolBar.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "HelpToolBar.h"
#import "UIView+ljrFrame.h"
#import "UIColor+ljrHex.h"
@interface HelpToolBar()

@property (nonatomic, strong) UIButton *plusBtn;
@property (nonatomic,   copy) void (^plusBtnClickedBlock) ( HelpToolBar *tabBar);

@end
@implementation HelpToolBar

- (instancetype)initWithFrame:(CGRect)frame plusBtnClicked:(void (^)(HelpToolBar *tabBar))clickBlock{
    if (self = [super initWithFrame:frame]) {
        self.plusBtnClickedBlock = clickBlock;
        UIButton *plusBtn = [[UIButton alloc] init];
        //[plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        //[plusBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        
        [plusBtn setImage:[UIImage imageNamed:@"add_normal"] forState:UIControlStateNormal];
        [plusBtn setImage:[UIImage imageNamed:@"add_selected"] forState:UIControlStateHighlighted];
        plusBtn.size = plusBtn.currentImage.size;
        
        [plusBtn addTarget:self action:@selector(plusClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:plusBtn];
        self.plusBtn = plusBtn;
    }
    return self;
}

- (void)plusClick {
    if (self.plusBtnClickedBlock != nil) {
        self.plusBtnClickedBlock(self);
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.plusBtn.centerX = self.w * 0.5;
    self.plusBtn.centerY = self.h * 0.5;
    
    CGFloat tabBarBtnW = self.w / 5;
    CGFloat tabbarBtnIndex = 0;
    
    for (UIView *btnClild in self.subviews) {
        
        Class class = NSClassFromString(@"UITabBarButton");
        if ([btnClild isKindOfClass:class]) {
            btnClild.frame = CGRectMake(tabbarBtnIndex*tabBarBtnW, 1, tabBarBtnW, self.h);

            tabbarBtnIndex ++;
            if (tabbarBtnIndex == 2) {
                tabbarBtnIndex ++ ;
            }
           
        }
    }
    
}

@end
