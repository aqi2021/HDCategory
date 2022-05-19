//
//  NSDictionary+HDFunc.m
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import "NSDictionary+HDFunc.h"

@implementation NSDictionary (HDFunc)

/// 是否为空
- (BOOL)isEmpty {
    return (self == nil || [self isKindOfClass:[NSNull class]] || self.count == 0);
}

@end
