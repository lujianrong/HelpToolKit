//
//  UIBarButtonItem+ljrBack.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@interface UIBarButtonItem (ljrBack)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

@end

NS_ASSUME_NONNULL_END
