//
//  LoginViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "LoginViewController.h"
#import "RootTabbarViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)initNavis{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)initViews{
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(200, 200, 100, 80);
    btn.backgroundColor = COLOR(greenColor);
    [btn setTitle:@"登录" forState:0];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:0];
    btn1.frame = CGRectMake(200, 400, 100, 80);
    btn1.backgroundColor = COLOR(greenColor);
    [btn1 setTitle:@"注册" forState:0];
    [btn1 addTarget:self action:@selector(registerClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

-(void)registerClick{
    RegisterViewController *registerCtl = [RegisterViewController new];
    [self.navigationController pushViewController:registerCtl animated:YES];
}

-(void)click{
    [UIView transitionWithView:[[UIApplication sharedApplication].delegate window] duration:1.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
        RootTabbarViewController *tabbar = [RootTabbarViewController new];
        BOOL oldState=[UIView areAnimationsEnabled];
        [UIView setAnimationsEnabled:YES];
        [[[UIApplication sharedApplication].delegate window] setRootViewController:tabbar];
        [UIView setAnimationsEnabled:oldState];
    } completion:^(BOOL finished) {
    }];
}

@end
