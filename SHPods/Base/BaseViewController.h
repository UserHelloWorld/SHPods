//
//  BaseViewController.h
//  Lock
//
//  Created by apple on 2017/8/9.
//  Copyright © 2017年 chenxin · luo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

- (void)presentWithViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^)(void))completion;

- (void)leftBtnClick;

/** 创建左按钮 */
- (void)createLeftButton;

/** 注册通知中心 */
- (void)addCenterNotifyName:(NSString *)notifyName;

/** 发送通知返回结果 */
- (void)messageNotify:(NSNotification *)notify;

@end
