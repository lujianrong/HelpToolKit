//
//  Root_NavigationController.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Root_NavigationController.h"
#import "UIBarButtonItem+ljrBack.h"
@interface Root_NavigationController ()

@end

@implementation Root_NavigationController

+ (void)load {
    //设置导航栏标题
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
    NSMutableDictionary *attrs = @{}.mutableCopy;
    attrs[NSFontAttributeName] = [UIFont boldSystemFontOfSize:18];
    attrs[NSForegroundColorAttributeName] = [UIColor redColor];
    [navBar setTitleTextAttributes:attrs];
    //[navBar setBackgroundImage:[UIImage imageNamed:@""] forBarPosition:<#(UIBarPosition)#> barMetrics:UIBarMetricsDefault]
}

+ (void)initialize {//苹果建议这么写 如果由子类基础此类会执行两遍
    if (self == [Root_NavigationController self]) {
        UIBarButtonItem *item = [UIBarButtonItem appearance];
        NSMutableDictionary *normal_attrs = @{}.mutableCopy;
        normal_attrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
        normal_attrs[NSFontAttributeName] = [UIFont systemFontOfSize:13.];
        [item setTitleTextAttributes:normal_attrs forState:(UIControlStateNormal)];
        
        NSMutableDictionary *disable_attrs = @{}.mutableCopy;
        disable_attrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.7];
        disable_attrs[NSFontAttributeName] = [UIFont systemFontOfSize:13.];
        [item setTitleTextAttributes:disable_attrs forState:UIControlStateDisabled];
    }
}

/**
 隐藏二级页面 tabbar
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    //统一设计
    if (self.viewControllers.count > 0) {
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(pop)];
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)pop {
    [self popViewControllerAnimated:YES];
}

@end
