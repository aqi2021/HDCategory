//
//  NSString+HDRegex.h
//  HDCategory
//
//  Created by 黄山锋 on 2022/5/19.
//
//  content: 正则表达式

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HDRegex)

/// 是否为有效的手机号
- (BOOL)hd_isValidMobileNumber;

/// 是否为有效的邮箱号
- (BOOL)hd_isValidEmail;

/// 是否为有效的金额（保留到小数点后两位）
- (BOOL)hd_isValidMoney;

/// 是否为有效的身份证号
- (BOOL)hd_isValidIdentityCard;

@end

NS_ASSUME_NONNULL_END
