//
//  UIImage+Color.m
//  SmartLock
//
//  Created by apple on 2017/11/13.
//  Copyright © 2017年 chenxin · luo. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)

//通过颜色来生成一个纯色图片
+ (UIImage *)buttonImageBounds:(CGRect)bounds color:(UIColor *)color{
    CGRect rect = CGRectMake(0, 0, bounds.size.width, bounds.size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
