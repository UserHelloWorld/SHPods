//
//  Authorization.h
//  Peripheral
//
//  Created by apple on 03/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>

/**
 权限设置
 */
@interface Authorization : NSObject

+ (BOOL)isMusicAuth; //!< 是否有获取音乐权限

+ (BOOL)isAudioAuth; //!< 是否有麦克风权限

+ (void)authorize; //!< 初始化权限

@end
