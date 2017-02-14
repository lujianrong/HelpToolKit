//
//  Root_TabBarController.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Root_TabBarController.h"
#import "Root_NavigationController.h"

#import "Level_Discover_Controller.h"
#import "Level_Me_Controller.h"
#import "Level_Home_Controller.h"
#import "Level_Publish_Controller.h"
#import "Level_LingYou_Controller.h"
#import "UIView+ljrFrame.h"
#import "HelpToolBar.h"
#import "UIColor+ljrHex.h"
#import "UILabel+ljrLabel.h"

@interface Root_TabBarController ()

@property (nonatomic, strong) HelpToolBar *customBar;

@property (nonatomic, strong) Level_Publish_Controller *publishVc;
@end

@implementation Root_TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpViewControllers];
    
    [self setValue:self.customBar forKey:@"tabBar"];
    
}

- (HelpToolBar *)customBar {
    if (!_customBar) {
        CGRect barFrame = CGRectMake(0, self.tabBar.y, self.tabBar.w, self.tabBar.h);
        HelpToolBar *customBar = [[HelpToolBar alloc] initWithFrame:barFrame plusBtnClicked:^(HelpToolBar *tabBar) {
            [self presentViewController:self.publishVc animated:YES completion:nil];
        }];
        _customBar = customBar;
    }
    return _customBar;
}

- (void)setUpViewControllers {

    [self addChildVc:Level_LingYou_Controller.new title:@"领游" image:@"lingyou_normal" selectedImage:@"lingyou_selected"];
    [self addChildVc:Level_Home_Controller.new title:@"首页" image:@"find_normal" selectedImage:@"find_selected"];
    [self addChildVc:Level_Discover_Controller.new title:@"定制" image:@"customize_normal" selectedImage:@"customize_selected"];
    [self addChildVc:Level_Me_Controller.new title:@"我的" image:@"me_normal" selectedImage:@"me_selected"];
    
}


- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    // 设置子控制器的文字
    childVc.title = title;
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = RGB_Color(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    // 先给外面传进来的小控制器 包装 一个导航控制器
    Root_NavigationController *nav = [[Root_NavigationController alloc] initWithRootViewController:childVc];
    // 添加为子控制器
    [self addChildViewController:nav];
}

- (Level_Publish_Controller *)publishVc {
    if (!_publishVc) {
        __weak __typeof(self)weakSelf = self;
        _publishVc = [[Level_Publish_Controller alloc] initWithDismssBtnClicked:^(Level_Publish_Controller *sender) {
            [weakSelf dismissViewControllerAnimated:YES completion:nil];
        }];
    }
    return _publishVc;
}

@end
