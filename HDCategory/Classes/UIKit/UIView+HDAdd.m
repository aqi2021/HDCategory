//
//  UIView+HDAdd.m
//  HDCategory
//
//  Created by 黄山锋 on 2022/6/7.
//

#import "UIView+HDAdd.h"
#import <objc/runtime.h>
#import "NSObject+HDAdd.h"

@implementation UIView (HDAdd)

+ (void)load {
    [NSObject hd_swizzleInstanceMethodWithClass:[UIView class] originalSel:@selector(pointInside:withEvent:) swizzledMethod:@selector(hd_pointInside:withEvent:)];
}

#pragma mark - 扩大点击范围
- (BOOL)hd_pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    if (UIEdgeInsetsEqualToEdgeInsets(self.hd_enlargeEdge, UIEdgeInsetsZero)) {
        return [self hd_pointInside:point withEvent:event];
    } else {
        CGRect frame = CGRectMake(-self.hd_enlargeEdge.left,
                                  -self.hd_enlargeEdge.top,
                                  CGRectGetWidth(self.frame) + self.hd_enlargeEdge.left + self.hd_enlargeEdge.right,
                                  CGRectGetHeight(self.frame) + self.hd_enlargeEdge.top + self.hd_enlargeEdge.bottom);
        if (CGRectContainsPoint(frame, point)) {
            return YES;
        }
        return NO;
    }
}

#pragma mark - setter/getter
- (void)setHd_enlargeEdge:(UIEdgeInsets)hd_enlargeEdge {
    objc_setAssociatedObject(self, @selector(hd_enlargeEdge), [NSValue valueWithUIEdgeInsets:hd_enlargeEdge], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (UIEdgeInsets)hd_enlargeEdge {
    NSValue *value = objc_getAssociatedObject(self, @selector(hd_enlargeEdge));
    return [value UIEdgeInsetsValue];
}


@end
