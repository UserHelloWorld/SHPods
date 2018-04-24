//
//  Header.h
//  Test
//
//  Created by apple on 20/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#ifndef Header_h
#define Header_h

// 获取MainStoryboard 控制器
#define GetViewController(n) [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:n]
// 系统版本
//#define iOS [[UIDevice currentDevice].systemVersion floatValue]
// 获取启动delegage单例对象
#define APP ((AppDelegate *)[[UIApplication sharedApplication] delegate])
// App的window层
#define KeyWindow [[UIApplication sharedApplication] keyWindow]
// 屏幕宽高
#define Width  [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height
// 颜色RGB
#define RGB(R,G,B,A) [UIColor colorWithRed:((R)/255.0) green:((G)/255.0) blue:((B)/255.0) alpha:(A)]
#define LocalizedString(k,n) NSLocalizedString(k, n)

// 注册通知
#define AddNotification(m,n)        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(m) name:n object:nil]
// 发送通知
#define PostNotification(n,obj)     [[NSNotificationCenter defaultCenter] postNotificationName:n object:obj]
// 移除所有通知
#define RemoveNotification [[NSNotificationCenter defaultCenter] removeObserver:self];

#define kIsiPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

#define kHeightiPhoneX 24

#define iPhone5 320

#ifdef __OBJC__

typedef void(^ReturnBlock)(id data);

#endif


#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...) /* 发布模式 */
#endif

#endif /* Header_h */
