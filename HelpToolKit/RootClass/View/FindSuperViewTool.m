//
//  FindSuperViewTool.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/14.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "FindSuperViewTool.h"

@implementation FindSuperViewTool

+ (NSArray *)superviews:(UIView *)view {
    if (view == nil)  return @[];
    NSMutableArray *result = @[].mutableCopy;
    while (view != nil) {
        [result addObject:view];
        view = view.superview;
    }
    return [result copy];
}

+ (UIView *)commonView:(UIView *)viewA view:(UIView *)viewB {
    NSArray *arrA = [self superviews:viewA];
    NSArray *arrB = [self superviews:viewB];
    
    //为了降低时间复杂度 才用NSSet 而不是双层for循环
    NSSet *set = [NSSet setWithArray:arrB];
    
    for (NSInteger i = 0; i < arrA.count; i++) {
        UIView *targetView = arrA[i];
        if ([set containsObject:targetView]) {
            return targetView;
        }
    }
    return nil;
}

@end
