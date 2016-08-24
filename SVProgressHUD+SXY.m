//
//  SVProgressHUD+SXY.m
//  SXYOA
//
//  Created by liuxx on 16/8/2.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import "SVProgressHUD+SXY.h"

// 默认2秒后消失
#define DISSMISS_TIME 2.0
@implementation SVProgressHUD (SXY)

+ (void)showLoading {
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setBackgroundColor:[UIColor clearColor]];
    [SVProgressHUD setBackgroundLayerColor:[UIColor clearColor]];
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, [UIScreen mainScreen].bounds.size.width*0.3)];
    [SVProgressHUD show];
}

+ (void)loadingWith:(NSString *)msg {
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4]];
    [SVProgressHUD setBackgroundLayerColor:[UIColor clearColor]];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14]];
    [SVProgressHUD showWithStatus:msg];
}

+ (void)successToast:(NSString *)success {
    [self errorToast:success];
}

+ (void)errorToast:(NSString *)error {
    CGFloat width = [UIScreen mainScreen].bounds.size.width*0.8747;
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setMinimumDismissTimeInterval:DISSMISS_TIME];
    [SVProgressHUD setMinimumSize:CGSizeMake(width, width*0.222)];
    [SVProgressHUD setCornerRadius:4.0f];
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(0, width*0.1)];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14]];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4]];
    [SVProgressHUD setBackgroundLayerColor:[UIColor clearColor]];
    [SVProgressHUD setErrorImage:nil];
    [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"\n%@\n",error]];
}

+ (void)messageToast:(NSString *)msg {
    [self errorToast:msg];
}

+ (void)dismiss {
    [SVProgressHUD dismiss];
}
@end
