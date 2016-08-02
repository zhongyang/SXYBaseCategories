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

// 统一样式
+ (void)getDefaultStyle {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD setMinimumDismissTimeInterval:DISSMISS_TIME];
}

+ (void)showHUD {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD show];
}

+ (void)showMessage:(NSString *)message {
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD showWithStatus:message];
}

+ (void)showInfo:(NSString *)info {
    [SVProgressHUD getDefaultStyle];

    //去掉图片
    [SVProgressHUD setInfoImage:nil];
    [SVProgressHUD showInfoWithStatus:info];
}

+ (void)showSuccess:(NSString *)success {
    [SVProgressHUD getDefaultStyle];
    [SVProgressHUD showSuccessWithStatus:success];
}

+ (void)showError:(NSString *)error {
    [SVProgressHUD getDefaultStyle];
    [SVProgressHUD showErrorWithStatus:error];
}

+ (void)showWarning:(NSString *)warning {
    [SVProgressHUD getDefaultStyle];
    [SVProgressHUD showInfoWithStatus:warning];
}

+ (void)dismissHUD {
    [SVProgressHUD dismiss];
}
@end
