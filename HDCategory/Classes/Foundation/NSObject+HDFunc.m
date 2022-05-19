//
//  NSObject+HDFunc.m
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//

#import "NSObject+HDFunc.h"
#import <objc/runtime.h>

@implementation NSObject (HDFunc)

/// 判断某个类的某个方法是否被重写过
/// @param cls 类
/// @param aSelector 方法
+ (BOOL)hd_checkMethodIsOverrideWithCls:(Class)cls aSelector:(SEL)aSelector {
    IMP curImp = class_getMethodImplementation(cls, aSelector);
    if (!curImp) {
        // 方法不存在
        return NO;
    }
    Class superCls = class_getSuperclass(cls);
    IMP superImp = nil;
    while (superCls != nil) {
        cls = superCls;
        superImp = class_getMethodImplementation(cls, aSelector);
        if (superImp) {
            break;
        }
    }
    return curImp != superImp;
}

@end
