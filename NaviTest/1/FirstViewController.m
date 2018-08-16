//
//  FirstViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "FirstViewController.h"
#import "First_ChildViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)initNavis{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)initViews{
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(200, 200, 100, 80);
    btn.backgroundColor = COLOR(greenColor);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click{
    First_ChildViewController *child = [First_ChildViewController new];
    [self pushViewControllerTo:child andAnimate:YES];
}

@end
