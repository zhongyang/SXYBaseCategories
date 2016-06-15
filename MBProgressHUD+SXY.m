//
//  MBProgressHUD+SXY.m
//  SXYOA
//
//  Created by liuxx on 16/6/15.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import "MBProgressHUD+SXY.h"

@implementation MBProgressHUD (SXY)
#warning 预留的3个状态:success,error,warn状态图片需要设置
#define IconSuccess @"success.png"
#define IconError @"error.png"
#define IconWarning @"warning.png"

#pragma mark 显示信息(成功或者失败或者警告)和状态
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;

    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];

    //设置内容
    hud.labelText = text;

    // 设置图片(成功或者失败)
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:icon]];

    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;

    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;

    // 1秒之后再消失
    [hud hide:YES afterDelay:0.7];
}

#pragma mark 显示(错误或者警告或者成功)信息和状态
+ (void)showError:(NSString *)error toView:(UIView *)view {
    [self show:error icon:IconSuccess view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view {
    [self show:success icon:IconError view:view];
}

+ (void)showWarning:(NSString *)warning toView:(UIView *)view {
    [self show:warning icon:IconWarning view:view];
}


#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;

    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];

    hud.labelText = message;

    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;

    // YES代表需要蒙版效果
    hud.dimBackground = YES;

    return hud;
}

+ (void)showSuccess:(NSString *)success {
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error {
    [self showError:error toView:nil];
}

+ (void)showWarn:(NSString *)warning {
    [self showWarning:warning toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString *)message {
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD {
    [self hideHUDForView:nil];
}

@end
