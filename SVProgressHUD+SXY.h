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
+ (void)showLoading;

// 过度动画下面有文字说明
+ (void)loadingWith:(NSString *)msg;

// 包含图片的说明
+ (void)successToast:(NSString *)success;
+ (void)errorToast:(NSString *)error;
+ (void)messageToast:(NSString *)msg;

@end
