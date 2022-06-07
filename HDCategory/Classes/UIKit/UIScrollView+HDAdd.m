//
//  UIScrollView+HDAdd.m
//  HDCategory
//
//  Created by 黄山锋 on 2022/6/2.
//

#import "UIScrollView+HDAdd.h"

@implementation UIScrollView (HDAdd)
- (void)hd_adjust {
    if ([self respondsToSelector:NSSelectorFromString(@"setContentInsetAdjustmentBehavior:")]) {
        NSMethodSignature *signature = [UIScrollView instanceMethodSignatureForSelector:@selector(setContentInsetAdjustmentBehavior:)];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        NSInteger argument = 2;
        invocation.target = self;
        invocation.selector = @selector(setContentInsetAdjustmentBehavior:);
        [invocation setArgument:&argument atIndex:2];
        [invocation retainArguments];
        [invocation invoke];
    }
}
@end
