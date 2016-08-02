//
//  SVProgressHUD+SXY.h
//  SXYOA
//
//  Created by liuxx on 16/8/2.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import <SVProgressHUD/SVProgressHUD.h>

@interface SVProgressHUD (SXY)
// 只有过度动画
+ (void)showHUD;

// 过度动画下面有文字说明
+ (void)showMessage:(NSString *)message;

// 没有图片的说明
+ (void)showInfo:(NSString *)info;

// 包含图片的说明
+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (void)showWarning:(NSString *)warning;

// HUD消失
+ (void)dismissHUD;
@end
