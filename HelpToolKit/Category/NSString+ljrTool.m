//
//  NSString+ljrTool.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "NSString+ljrTool.h"

#pragma mark
#pragma mark - ---正则表达式---
@implementation NSString (ljrRegular)


@end


#pragma mark
#pragma mark - ---计算文字高度---
@implementation NSString (ljrSize)

- (CGSize)ljr_sizeWithFont:(CGFloat)font size:(CGSize)size {
    NSDictionary *attributes = @{NSFontAttributeName :
                                     [UIFont systemFontOfSize:font]};
    
    CGRect frame = [self boundingRectWithSize:size options:
                    NSStringDrawingUsesLineFragmentOrigin |
                    NSStringDrawingUsesFontLeading attributes:
                    attributes context:nil];
    return frame.size;
}

@end
