//
//  NSString+HDFunc.m
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import "NSString+HDFunc.h"

@implementation NSString (HDFunc)

/// 是否为空
- (BOOL)isEmpty {
    return (self == nil || [self length] < 1 || [self isEqualToString:@"null"] || [self isEqualToString:@"Null"] || [self isKindOfClass:[NSNull class]] ? YES : NO );
}

@end
