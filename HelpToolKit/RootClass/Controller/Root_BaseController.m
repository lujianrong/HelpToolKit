//
//  Root_BaseController.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Root_BaseController.h"
#import "UIColor+ljrHex.h"
@interface Root_BaseController ()

@end

@implementation Root_BaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor ljr_randomColor];
}


@end
