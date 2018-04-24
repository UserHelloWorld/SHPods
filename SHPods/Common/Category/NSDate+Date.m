//
//  NSDate+Date.m
//  Test
//
//  Created by apple on 19/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "NSDate+Date.h"

@implementation NSDate (Date)

+ (void)currentDateValue:(void(^)(NSInteger year,NSInteger month,NSInteger day,NSInteger hour,NSInteger minute,NSInteger second))returnValue
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    // 当前时间
    NSDate *date = [NSDate date];
    
    // 要获取的时间信息
    NSCalendarUnit unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    components = [calendar components:unitFlags fromDate:date];
    NSInteger year=[components year];
    NSInteger month=[components month];
    NSInteger day=[components day];
    NSInteger hour = [components hour];
    NSInteger minute = [components minute];
    NSInteger second = [components second];
    if (returnValue) {
        returnValue(year,month,day,hour,minute,second);
    }
}

@end
