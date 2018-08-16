//
//  constance.h
//  yilongyueche
//
//  Created by zhangqq on 2018/4/25.
//  Copyright © 2018年 张凯. All rights reserved.
//

#ifndef Constance_h
#define Constance_h

#ifdef DEBUG

#define BASE_URL  @"http://rxn.tunnel.echomod.cn"
//#define BASE_URL @"http://202.98.201.33:81"//正式
//#define BASE_URL  @"http://test.chaoyangchewu.bjxhgx.com:9073"

#else
//#define BASE_URL  @"http://test.chaoyangchewu.bjxhgx.com:9073/"
#define BASE_URL @"http://202.98.201.33:81"//正式
#endif

#define SHOW_API_APPID @"68868"
#define SHOW_API_APPSECRET @"8ac59450efb04e2bbbb9ecf5c1c4fb90"

#define APPID @"1408355490"

#define WXPayAppID @"wx2edeaf2df4318900"
#define AlipayAppID @"2088031793342585"
#define BuglyAppID @"b6ab88dd99"


// 调试打印
#ifdef DEBUG
#define DLog(...) NSLog(@"%@", [NSString stringWithFormat:__VA_ARGS__])
#else
#define DLog(...)
#endif

#define LocalImage(a)  [UIImage imageNamed:a]

#define ProStrong @property (nonatomic, strong)
#define ProUnsafe @property (nonatomic, unsafe_unretained)
#define ProWeak @property (nonatomic, weak)
#define ProCopy @property (nonatomic, copy)

#define WEAK_SELF __weak typeof(self) weakSelf = self;
#define STRONG_SELF __strong typeof(self) strongSelf = weakSelf;

/***********weakSelf*************/

#ifndef weakify
#if DEBUG
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif


/***********strongSelf*************/
#ifndef strongify
#if DEBUG
#if __has_feature(objc_arc)
#define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif

//设备id
#define DeviceID [[[UIDevice currentDevice] identifierForVendor] UUIDString]
//默认图片
#define PlaceholderImage [UIImage imageNamed:@"pic1"]

//字体适配调整
#define FONT(i) [UIFont systemFontOfSize:(i)]
#define FONT_BOLD(a) [UIFont boldSystemFontOfSize:a]

#define TextRedColor  [UIColor colorWithRed:242.0/255 green:63.0/255 blue:63.0/255 alpha:1]
#define TextYellowColor  [UIColor colorWithRed:254.0/255 green:151.0/255 blue:60.0/255 alpha:1]

#define LWRGBColor(r,g,b)  [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1]
#define LWLightButtonBackgroundColor  [UIColor colorWithRed:178.0/255.0 green:218.0/255.0 blue:255.0/255.0 alpha:1]

#define COLOR(Costom)         ([UIColor Costom])
#define ColorRGB(R,G,B)     [UIColor colorWithRed:(R)/255.0f green:(G)/255.0f blue:(B)/255.0f alpha:1.0f]
#define ColorRGBA(R,G,B,A)     [UIColor colorWithRed:(R)/255.0f green:(G)/255.0f blue:(B)/255.0f alpha:(A)]
#define Color_e8e8e8 [UIColor colorWithHexString:@"#e8e8e8"]
#define Color_e6e6e6 [UIColor colorWithHexString:@"#e6e6e6"]
#define Color_666666 [UIColor colorWithHexString:@"#666666"]
#define Color_222222 [UIColor colorWithHexString:@"#222222"]
#define Color_adadad [UIColor colorWithHexString:@"#adadad"]
#define Color_9a9a9a [UIColor colorWithHexString:@"#9a9a9a"]
#define Color_f78611 [UIColor colorWithHexString:@"#f78611"]
#define Color_ffe1e1 [UIColor colorWithHexString:@"#ffe1e1"]
#define Color_000000 [UIColor colorWithHexString:@"#000000"]


//机型判断
#define isiPhoneX (([UIScreen mainScreen].bounds.size.height == 812 && [UIScreen mainScreen].bounds.size.width == 375)?YES:NO)
#define tabbarBottomHeight (isiPhoneX?34:0)
#define tabbarHeight (isiPhoneX?83:49)
#define navH (isiPhoneX?88:64)
//适应屏幕大小
#define AutoFix(length) [UIView autoFixScreenWidth:length]
//屏幕宽高
#define screenWidth [UIScreen mainScreen].bounds.size.width
#define screenHeight [UIScreen mainScreen].bounds.size.height

#define W(x) (screenWidth*(x))/375.0
#define H(y) (screenHeight*(y))/667.0
//状态栏高度
#define statusHeight [UIApplication sharedApplication].statusBarFrame.size.height


#define SetColor(colorStr) [UIColor colorWithHexString:colorStr]
#define scaleH [UIScreen mainScreen].bounds.size.height/667
#define scaleW [UIScreen mainScreen].bounds.size.width/375
#define SharedAppDelegate ((AppDelegate *)([UIApplication sharedApplication].delegate))


#define GetUUID [[UIDevice currentDevice].identifierForVendor UUIDString]




#endif /* constance_h */
