//
//  NSString+Tool.m
//  SXYOA
//
//  Created by MAC_MINI on 16/6/15.
//  Copyright © 2016年 zhongyang. All rights reserved.
//

#import "NSString+Tool.h"

@implementation NSString (Tool)

+ (NSArray *)getCharArray {
    NSMutableArray *tempArr = [[NSMutableArray alloc] initWithCapacity:0];
    for(char c ='A';c<='Z';c++) {
        //当前字母
        [tempArr addObject:[NSString stringWithFormat:@"%c",c]];
    }
    return (NSArray *)tempArr;
}


@end
