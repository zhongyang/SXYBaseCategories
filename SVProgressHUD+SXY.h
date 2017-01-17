//
//  SVProgressHUD+SXY.h
//  SXYOA
//
//  Created by liuxx on 16/8/2.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import <SVProgressHUD_SXY/SVProgressHUD.h>

@interface SVProgressHUD (SXY)
// 只有过度动画
+ (void)showLoadingHUD;

// 过度动画下面有文字说明
+ (void)showLoadingHUDWith:(NSString *)msg;

// 包含图片的说明
+ (void)successHUDToast:(NSString *)success;
+ (void)errorHUDToast:(NSString *)error;
+ (void)messageHUDToast:(NSString *)msg;

// HUD消失
+ (void)dismissHUD;

//说明
+ (void)showInfoToast:(NSString *)msg;

@end
