//
//  First_ChildViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "First_ChildViewController.h"
#import "First_cchildViewController.h"

@interface First_ChildViewController ()

@end

@implementation First_ChildViewController

- (void)initViews{
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(200, 200, 100, 80);
    btn.backgroundColor = COLOR(greenColor);
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)click{
    First_cchildViewController *child = [First_cchildViewController new];
    [self pushViewControllerTo:child andAnimate:YES];
}

@end
