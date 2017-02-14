//
//  UIViewController+ljrSwizzle.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "UIViewController+ljrSwizzle.h"
#import "LJRSwizzle.h"

@implementation UIViewController (ljrSwizzle)

+ (void)load {

    ljr_Swizzle([self class], @selector(viewWillDisappear:), @selector(ljr_viewWillDisappear:));
    ljr_Swizzle([self class], @selector(viewWillAppear:), @selector(ljr_viewWillAppear:));
}


- (void)ljr_viewWillAppear:(BOOL)animated {
    NSString *className = NSStringFromClass(self.class);
    // 我们在这里加一个判断，将系统的UIViewController的对象剔除掉
    if (![className containsString:@"UI"] && ![className containsString:@"Root"]) {
        NSLog(@" %@ -- -- viewWillAppear\n\n", className);
    }
    [self ljr_viewWillAppear:animated];
}

- (void)ljr_viewWillDisappear:(BOOL)animated {
    NSString *className = NSStringFromClass(self.class);
    // 我们在这里加一个判断，将系统的UIViewController的对象剔除掉
    if (![className containsString:@"UI"] && ![className containsString:@"Root"]) {
        NSLog(@" %@ -- -- viewWillDisappear\n\n", className);
    }
    [self ljr_viewWillAppear:animated];
}
@end
