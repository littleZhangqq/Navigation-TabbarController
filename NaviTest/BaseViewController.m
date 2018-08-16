//
//  BaseViewController.m
//  NaviTest
//
//  Created by zhangqq on 2018/8/16.
//  Copyright © 2018年 张强. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
    self.view.backgroundColor = COLOR(whiteColor);
    [self setupNavation];
    [self initData];
    [self initViews];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (![touches.anyObject isKindOfClass:[UITextView class]] && ![touches.anyObject isKindOfClass:[UITextField class]]) {
        [self.view endEditing:YES];
    }
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self getLineViewInNavigationBar:self.navigationController.navigationBar].hidden = YES;
    NSLog(@"当前controller是%@",[self class]);
    [self initNavis];
}

-(void)initData{}
-(void)initViews{}
-(void)initNavis{}

-(void)pushViewControllerTo:(BaseViewController *)ctl andAnimate:(BOOL)animate{
    ctl.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:ctl animated:animate];
}

-(void)setupNavation{
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barTintColor = ColorRGB(60,137,170);
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:COLOR(orangeColor),NSFontAttributeName:[UIFont boldSystemFontOfSize:18]};
}

- (UIImageView *)getLineViewInNavigationBar:(UIView *)view{
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self getLineViewInNavigationBar:subview];
        if (imageView) {
            return imageView;
        }
    }
    
    return nil;
}

@end
