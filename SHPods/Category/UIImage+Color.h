//
//  UIImage+Color.h
//  SmartLock
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 chenxin · luo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

//通过颜色来生成一个纯色图片
+ (UIImage *)buttonImageBounds:(CGRect)bounds color:(UIColor *)color;

@end
