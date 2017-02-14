
//
//  Level_LingYou_Controller.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Level_LingYou_Controller.h"
#import "Test1Controller.h"
#import "LJRButton.h"

@interface Level_LingYou_Controller ()

@property (nonatomic, strong) UIScrollView *contentScollView;
@end

@implementation Level_LingYou_Controller

- (void)viewDidLoad {
    [super viewDidLoad];
   
    CGRect frame  = CGRectMake(5, 0, self.view.w - 10, 50);
    NSString *normalImg = @"add_normal";
    
    LJRButton *btn = ({
        LJRButton *btn = [LJRButton btnWithType:LJRButtonTypeImgAtCenterRight frame:frame normalImage:normalImg target:self action:@selector(clicked) title:@"居中而且文字在左 图片在右"];
        btn.backgroundColor = [UIColor yellowColor];
        btn.center = self.view.center;
        btn.y = 70;
        btn;
    });
    [self.view addSubview:btn];
    
    
    LJRButton *btntop = ({
        CGRect frame = CGRectMake(0, 0, 130, 150);
        LJRButton *btntop = [LJRButton btnWithType:LJRButtonTypeImgAtTop frame:frame normalImage:normalImg target:self action:@selector(clicked) title:@"图片在上, 文字在下"];
        btntop.x = 20;
        btntop.y = btn.bottom + 5;
        btntop.backgroundColor = [UIColor yellowColor];
        btntop;
    });
    [self.view addSubview:btntop];
    
    LJRButton *btnbottom = ({
        CGRect frame = CGRectMake(0, 0, 130, 150);
        LJRButton *btnbottom = [LJRButton btnWithType:LJRButtonTypeImgAtBottom frame:frame normalImage:normalImg target:self action:@selector(clicked) title:@"图片在下, 文字在上"];
        btnbottom.x = btntop.right + 20;
        btnbottom.y = btn.bottom + 5;
        btnbottom.backgroundColor = [UIColor yellowColor];
        btnbottom;
    });
    [self.view addSubview:btnbottom];
    
    
}

- (void)clicked {
    NSLog(@" %s ", __func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Test1Controller *test = [[Test1Controller alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}

- (UIScrollView *)contentScollView {
    if (!_contentScollView) {
        _contentScollView = [[UIScrollView alloc] initWithFrame:Screen_Bounds];
    }
    return _contentScollView;
}

@end
