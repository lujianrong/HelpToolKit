//
//  HelpToolController.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "HelpToolController.h"


@interface HelpToolController ()

@property (nonatomic, strong) CADisplayLink *link;
@end

@implementation HelpToolController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak __typeof(self)weakSelf = self;
    _link = [CADisplayLink displayLinkWithTarget:weakSelf selector:@selector(linkAction)];
    
}

- (void)linkAction {
    
}

@end
