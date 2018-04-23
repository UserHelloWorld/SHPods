//
//  AppData.h
//  Peripheral
//
//  Created by apple on 29/12/17.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppData : NSObject

+ (NSArray *)getGroupNameArray;

+ (void)saveGroupNameArray:(NSArray *)array;


+ (void)saveSequenceNum:(int)num;
+ (int)getSequenceNum;

+ (void)saveNumberLED:(CGFloat)num;
+ (CGFloat)getNumberLED;

+ (void)saveModeSelectedRow:(int)row;
+ (int)getModeSelectedRow;

@end
