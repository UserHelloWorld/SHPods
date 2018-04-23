//
//  NSDate+Date.h
//  Test
//
//  Created by apple on 19/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Date)

+ (void)currentDateValue:(void(^)(NSInteger year,NSInteger month,NSInteger day,NSInteger hour,NSInteger minute,NSInteger second))returnValue;

@end
