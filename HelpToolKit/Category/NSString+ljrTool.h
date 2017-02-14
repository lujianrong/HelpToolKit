//
//  NSString+ljrTool.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark
#pragma mark - ---正则表达式---
@interface NSString (ljrRegular)



@end



#pragma mark
#pragma mark - ---计算文字高度---
@interface NSString (ljrSize)

/**
 @param font 文字font
 @param size lab 最大高度 宽度
 */
- (CGSize)ljr_sizeWithFont:(CGFloat)font size:(CGSize)size;

@end
