//
//  RootTabbarViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "RootTabbarViewController.h"
#import "RootNaviViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface RootTabbarViewController ()

@end

@implementation RootTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RootNaviViewController *navi1 = [[RootNaviViewController alloc] initWithRootViewController:[FirstViewController new]];
    RootNaviViewController *navi2 = [[RootNaviViewController alloc] initWithRootViewController:[SecondViewController new]];
    RootNaviViewController *navi3 = [[RootNaviViewController alloc] initWithRootViewController:[ThirdViewController new]];
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"1号" image:nil tag:0];
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"2号" image:nil tag:0];
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"3号" image:nil tag:0];
    navi1.tabBarItem = item1;
    navi2.tabBarItem = item2;
    navi3.tabBarItem = item3;
    
    NSArray *array = @[navi1,navi2,navi3];
    self.viewControllers = array;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
