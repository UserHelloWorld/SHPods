//
//  Authorization.m
//  Peripheral
//
//  Created by apple on 03/04/18.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "Authorization.h"

@implementation Authorization

+ (BOOL)isMusicAuth {
    
    if (@available(iOS 9.3, *)) {
        MPMediaLibraryAuthorizationStatus authStatus = [MPMediaLibrary authorizationStatus];
        if (authStatus == AVAuthorizationStatusAuthorized){
            return YES;
        }else{
            return NO;
        }
    } else {
        return YES;
    }
}

+ (BOOL)isAudioAuth {
    __block BOOL ret = NO;
    AVAudioSession *session = [AVAudioSession sharedInstance];
    if ([session respondsToSelector:@selector(requestRecordPermission:)]) {
        [session performSelector:@selector(requestRecordPermission:) withObject:^(BOOL granted) {
            ret = granted;
        }];
    } else {
        ret = YES;
    }
    return ret;
}

+ (void)authorize {
   
    [self musicAuth];
    [self audioAuth];
}


+ (void)musicAuth {
    if (@available(iOS 9.3, *)) {
        MPMediaLibraryAuthorizationStatus authStatus = [MPMediaLibrary authorizationStatus];
        if (authStatus == AVAuthorizationStatusNotDetermined) {
            [MPMediaLibrary requestAuthorization:^(MPMediaLibraryAuthorizationStatus status) {
                if (status == MPMediaLibraryAuthorizationStatusAuthorized) {
                    
                }else{
                    
                }
            }];
        }
    }
}

+ (void)audioAuth {
    AVAuthorizationStatus videoAuthStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    if (videoAuthStatus == AVAuthorizationStatusNotDetermined) {// 未询问用户是否授权
        //第一次询问用户是否进行授权
        [[AVAudioSession sharedInstance] requestRecordPermission:^(BOOL granted) {
            if (granted) {
                NSLog(@"%d",granted);
            }
            else {
                NSLog(@"%d",granted);
            }
        }];
    }
}


@end
