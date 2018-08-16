//
//  SecondViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "SecondViewController.h"
#import "Second_childViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)initNavis{
    self.navigationItem.title = @"二号";
}

- (void)initViews{
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(200, 200, 100, 80);
    btn.backgroundColor = COLOR(greenColor);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click{
    Second_childViewController *child = [Second_childViewController new];
    [self pushViewControllerTo:child andAnimate:YES];
}

@end
