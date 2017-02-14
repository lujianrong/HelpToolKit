//
//  LJRButton.h
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/8.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, LJRButtonType) {
    LJRButtonTypeImgAtMostRight,        //文字最左, 图片最右边
    LJRButtonTypeImgAtMostLeft,         //图片在最左边 文字在最右边
    LJRButtonTypeImgAtCenterLeft,       //文字图片居中 而且图片在左边
    LJRButtonTypeImgAtCenterRight,      //文字图片居中 而且图片在右边
    LJRButtonTypeImgAtTop,               //图片在上 文字在下
    LJRButtonTypeImgAtBottom            //图片在下 文字在上
};

@interface LJRButton : UIButton

// 因为title 可能是汉字, 填了汉字, 没有代码提示, 所以放到最后
+ (instancetype)btnWithType:(LJRButtonType)type frame:(CGRect)frame normalImage:(nullable NSString *)normalImage
                     target:(id)target action:(SEL)action title:(nullable NSString *)title;
@end

NS_ASSUME_NONNULL_END
