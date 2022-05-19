//
//  NSObject+HDMethodSwizzling.h
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (HDMethodSwizzling)

/// 交换类方法
/// @param cls 类名
/// @param originalSel 原方法
/// @param swizzledMethod 交换方法
+ (void)hd_swizzleClassMethodWithClass:(Class)cls originalSel:(SEL)originalSel swizzledMethod:(SEL)swizzledMethod;

/// 交换对象方法
/// @param cls 类名
/// @param originalSel 原方法
/// @param swizzledMethod 交换方法
+ (void)hd_swizzleInstanceMethodWithClass:(Class)cls originalSel:(SEL)originalSel swizzledMethod:(SEL)swizzledMethod;

@end

NS_ASSUME_NONNULL_END
