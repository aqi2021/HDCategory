//
//  NSString+HDFunc.h
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 字符串拼接
#define HDStrFormat(fmt, ...) [NSString stringWithFormat:fmt, __VA_ARGS__]

@interface NSString (HDFunc)

/// 是否为空
- (BOOL)isEmpty;

@end

NS_ASSUME_NONNULL_END
