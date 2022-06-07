#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "HDCategory.h"
#import "HDFoundation.h"
#import "NSArray+HDAdd.h"
#import "NSDictionary+HDAdd.h"
#import "NSMutableArray+HDAdd.h"
#import "NSObject+HDAdd.h"
#import "NSString+HDAdd.h"
#import "NSString+HDDate.h"
#import "NSString+HDEncrypt.h"
#import "NSString+HDRegex.h"
#import "HDUIKit.h"
#import "UIButton+HDAdd.h"
#import "UIScrollView+HDAdd.h"
#import "UIView+HDAdd.h"

FOUNDATION_EXPORT double HDCategoryVersionNumber;
FOUNDATION_EXPORT const unsigned char HDCategoryVersionString[];

