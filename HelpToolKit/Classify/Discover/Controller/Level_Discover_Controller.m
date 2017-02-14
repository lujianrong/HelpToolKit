//
//  Level_Discover_Controller.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Level_Discover_Controller.h"
#import "UIColor+ljrHex.h"

#import "FindSuperViewTool.h"

@interface Level_Discover_Controller ()

@end

@implementation Level_Discover_Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *backView = ({
        UIView *backView = [[UIView alloc] init];
        backView.frame = CGRectMake(0, 0, 300, 300);
        backView.backgroundColor = [UIColor yellowColor];
        backView.center = self.view.center;
        backView;
    });
    [self.view addSubview:backView];
    
    
    UIView *backView1 = ({
        UIView *backView1 = [[UIView alloc] init];
        backView1.frame = CGRectMake(10, 10, 280, 280);
        backView1.backgroundColor = [UIColor redColor];
        backView1;
    });
    [backView addSubview:backView1];
    
    
    UIView *subview1 = ({
        UIView *subview1 = [[UIView alloc] init];
        subview1.frame = CGRectMake(0, 0, 200, 100);
        subview1.backgroundColor = [UIColor greenColor];
        subview1.center = backView1.center;
        subview1.y = 5;
        subview1;
    });
    [backView1 addSubview:subview1];
    
    UIView *subview2 = ({
        UIView *subview2 = [[UIView alloc] init];
        subview2.frame = CGRectMake(0, 0, 200, 100);
        subview2.backgroundColor = [UIColor blueColor];
        subview2.center = backView1.center;
        subview2.bottom = backView1.h - 5;
        subview2;
    });
    [backView1 addSubview:subview2];
    
    NSLog(@" %@ ", [FindSuperViewTool commonView:subview1 view:subview2]);
    
}



@end
