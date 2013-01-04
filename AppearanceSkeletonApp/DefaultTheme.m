//
//  DefaultTheme.m
//  AppearanceSkeletonApp
//
//  Created by nguillot on 04/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "DefaultTheme.h"

@implementation DefaultTheme


- (UIColor *)navigationTintColor
{
    return nil;
}

- (UIImage *)navigationBackgroundForBarMetrics:(UIBarMetrics)metrics
{
    return nil;
}

- (UIImage *)backBackgroundForState:(UIControlState)state barMetrics:(UIBarMetrics)barMetrics
{
    return nil;
}

- (UIImage *)navigationBarShadow
{
    return [UIImage imageNamed:@"topShadow"];
}

- (UIColor *)viewTitleColor
{
    return nil;
}

- (UIFont *)viewTitleFont
{
    return [UIFont fontWithName: @"Georgia-Bold" size: 20];
}

- (UIColor *)shadowColor
{
    return [UIColor colorWithWhite:1.0 alpha:0.5];
}

- (CGSize)shadowOffset
{
    return CGSizeMake(0.0, 1.0);
}

- (UIColor *)titleColor
{
    return nil;
}

- (UIFont *)titleFont
{
    return [UIFont fontWithName: @"Georgia-Bold" size: 18];
}

- (UIColor *)subtitleColor
{
    return nil;
}

- (UIFont *)subTitleFont
{
    return [UIFont fontWithName: @"Georgia-Italic" size: 15];
}


- (UIColor *)textColor
{
    return nil;
}

- (UIFont *)textFont;
{
    return [UIFont fontWithName: @"Helvetica" size: 14];
}

- (UIColor *)backgroundColor
{
    return nil;
}

@end
