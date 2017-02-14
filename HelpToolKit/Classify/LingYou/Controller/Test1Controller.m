//
//  Test1Controller.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Test1Controller.h"
#import "Test2Controller.h"
@interface Test1Controller ()

@end

@implementation Test1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"--Test1Vc--";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Test2Controller *t2 = [[Test2Controller alloc] init];
    [self.navigationController pushViewController:t2 animated:YES];
}

@end
