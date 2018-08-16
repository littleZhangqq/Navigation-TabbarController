//
//  BaseViewController.h
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

-(void)initData;
-(void)initViews;
-(void)initNavis;
-(void)pushViewControllerTo:(BaseViewController *)ctl andAnimate:(BOOL)animate;

@end
