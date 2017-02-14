//
//  Level_Publish_Controller.m
//  HelpToolKit
//
//  Created by lujianrong on 2016/12/7.
//  Copyright © 2016年 JianRong-Lu. All rights reserved.
//

#import "Level_Publish_Controller.h"
#import "UIButton+ljrBtn.h"
@interface Level_Publish_Controller ()
/** <#- hint- #>*/
@property (nonatomic,   copy) void (^dismissBtnClickedBlock) (Level_Publish_Controller *pulishVc);
@end

@implementation Level_Publish_Controller

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (instancetype)initWithDismssBtnClicked:(void (^)(Level_Publish_Controller *))dismissBtnClicked {
    if (self = [super init]) {
        self.dismissBtnClickedBlock = dismissBtnClicked;
        CGRect frame = CGRectMake(10, 20, 40, 40);
        UIButton *dismissBtn = [UIButton ljr_buttonWithFrame:frame clicked:^(UIButton *sender) {
            if (dismissBtnClicked != nil) dismissBtnClicked(self);
        }];
        dismissBtn.backgroundColor = [UIColor redColor];
        [self.view addSubview:dismissBtn];
    }
    return self;
}

- (void)dealloc {
    NSLog(@" %s ", __FUNCTION__);
}

@end
