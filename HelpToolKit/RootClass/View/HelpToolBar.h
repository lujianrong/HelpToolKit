//
//  HelpToolBar.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelpToolBar : UITabBar

/**
 点击加号按钮的回调
 */
- (instancetype)initWithFrame:(CGRect)frame plusBtnClicked:(void (^)(HelpToolBar *tabBar))clickBlock;

@end
