//
//  FindSuperViewTool.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/14.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FindSuperViewTool : UIView

+ (NSArray *)superviews:(UIView *)view;


/**
  寻找两个view最近的公共superView
 */
+ (UIView *)commonView:(UIView *)viewA view:(UIView *)viewB;

@end
