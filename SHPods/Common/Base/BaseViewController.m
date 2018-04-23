//
//  BaseViewController.m
//  Lock
//
//  Created by apple on 2017/8/9.
//  Copyright © 2017年 chenxin · luo. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (self.navigationController != nil)
    {
//        self.navigationController.navigationBar.hidden = NO;
    }
}

- (void)createLeftButton
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 20, 60, 50);
    [btn setImage:[UIImage imageNamed:@"back_light"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"back_light"] forState:UIControlStateHighlighted];
    
    btn.contentHorizontalAlignment =UIControlContentHorizontalAlignmentLeft;
//    btn.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;

    [btn addTarget:self action:@selector(leftBtnClick) forControlEvents:UIControlEventTouchUpInside];
    // push进来的
    if (self.navigationController) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    } else {
        // present进来的
        [self.view addSubview:btn];
    }
    
}
- (void)leftBtnClick{
    if (self.presentingViewController != nil) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}
- (void)presentWithViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^)(void))completion {
    
    UIViewController *rootViewCtrl = [UIApplication sharedApplication].keyWindow.rootViewController;
    
    if (nil == rootViewCtrl) rootViewCtrl = self;
    
    viewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    
    viewController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [rootViewCtrl presentViewController:viewController animated:YES completion:completion];
}

- (void)addCenterNotifyName:(NSString *)notifyName
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(messageNotify:) name:notifyName object:nil];
}

- (void)messageNotify:(NSNotification *)notify{}


@end
