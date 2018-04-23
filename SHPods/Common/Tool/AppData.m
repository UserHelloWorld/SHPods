//
//  AppData.m
//  Peripheral
//
//  Created by apple on 29/12/17.
//  Copyright © 2017年 apple. All rights reserved.
//

#define GroupName   @"GroupName"
#define SequenceNum @"SequenceNum"
#define NumberLED   @"NumberLED"
#define SelectedRow @"SelectedRow"
#import "AppData.h"

@implementation AppData

+ (NSArray *)getGroupNameArray {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    return [user objectForKey:GroupName];
}
+ (void)saveGroupNameArray:(NSArray *)array
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:array forKey:GroupName];
    [user synchronize];
}

+ (void)saveSequenceNum:(int)num {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setInteger:num forKey:SequenceNum];
    [user synchronize];
}

+ (int)getSequenceNum {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    return (int)[user integerForKey:SequenceNum];
}

+ (void)saveNumberLED:(CGFloat)num {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setFloat:num forKey:NumberLED];
    [user synchronize];
}

+ (CGFloat)getNumberLED {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    return [user floatForKey:NumberLED];
}

+ (void)saveModeSelectedRow:(int)row {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setInteger:row forKey:SelectedRow];
    [user synchronize];
}

+ (int)getModeSelectedRow {
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    return (int)[user integerForKey:SelectedRow];
}

@end
