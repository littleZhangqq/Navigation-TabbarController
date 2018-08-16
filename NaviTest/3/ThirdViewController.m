//
//  ThirdViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "ThirdViewController.h"
#import "Third_childViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)initNavis{
    self.navigationItem.title = @"三号";
}

- (void)initViews{
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(200, 200, 100, 80);
    btn.backgroundColor = COLOR(greenColor);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click{
    Third_childViewController *child = [Third_childViewController new];
    [self pushViewControllerTo:child andAnimate:YES];
}

@end
