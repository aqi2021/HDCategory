//
//  NSObject+HDFunc.h
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (HDFunc)

/// 判断某个类的某个方法是否被重写过
/// @param cls 类
/// @param aSelector 方法
+ (BOOL)hd_checkMethodIsOverrideWithCls:(Class)cls aSelector:(SEL)aSelector;

@end

NS_ASSUME_NONNULL_END
