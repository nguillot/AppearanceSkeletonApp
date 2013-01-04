//
//  Theme.h
//  AppearanceSkeletonApp
//
//  Created by nguillot on 04/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Theme <NSObject>

//to use a color for navigation bar
- (UIColor *)navigationTintColor;
//to use an image for navigation bar
- (UIImage *)navigationBackgroundForBarMetrics:(UIBarMetrics)metrics;
- (UIImage *)backBackgroundForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics;
//to use a shadow under the navigation bar
- (UIImage *)navigationBarShadow;

- (UIColor *)viewTitleColor;
- (UIFont *)viewTitleFont;
- (CGSize)shadowOffset;
- (UIColor *)shadowColor;

- (UIColor *)titleColor;
- (UIFont *)titleFont;

- (UIColor *)subtitleColor;
- (UIFont *)subTitleFont;

- (UIColor *)textColor;
- (UIFont *)textFont;


- (UIColor *)backgroundColor;

@end

@interface ThemeManager : NSObject
+ (id <Theme>)sharedTheme;

+ (void)customizeAppAppearance;

+ (void)customizeBackground:(UIView *)view;
+ (void)customizeTitle:(UILabel *)label;
+ (void)customizeSubtitle:(UILabel *)label;
+ (void)customizeText:(UILabel *)label;
@end
