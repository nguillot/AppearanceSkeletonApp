//
//  Theme.m
//  AppearanceSkeletonApp
//
//  Created by nguillot on 04/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "Theme.h"
#import "DefaultTheme.h"
#import "WDFridayTheme.h"

@implementation ThemeManager

+ (id <Theme>)sharedTheme
{
    static id <Theme> sharedTheme = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // Create and return the theme:
        //sharedTheme = [[DefaultTheme alloc] init];
        sharedTheme = [[WDFridayTheme alloc] init];
    });
    
    return sharedTheme;
}

+ (void)customizeAppAppearance
{
    id <Theme> theme = [self sharedTheme];
    
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
    [navigationBarAppearance setBackgroundImage:[theme navigationBackgroundForBarMetrics:UIBarMetricsDefault] forBarMetrics:UIBarMetricsDefault];
    [navigationBarAppearance setBackgroundImage:[theme navigationBackgroundForBarMetrics:UIBarMetricsLandscapePhone] forBarMetrics:UIBarMetricsLandscapePhone];
    if([navigationBarAppearance respondsToSelector:@selector(setShadowImage:)]) {
        //iOS 6
        [navigationBarAppearance setShadowImage:[theme navigationBarShadow]];
    }
    
    NSMutableDictionary *titleTextAttributes = [[NSMutableDictionary alloc] init];
    UIColor *mainColor = [theme viewTitleColor];
    if (mainColor) {
        [titleTextAttributes setObject:mainColor forKey:UITextAttributeTextColor];
    }

    UIFont *titleFont = [theme viewTitleFont];
    if(titleFont) {
        [titleTextAttributes setObject:titleFont forKey:UITextAttributeFont];        
    }
    
    UIColor *shadowColor = [theme shadowColor];
    if (shadowColor) {
        [titleTextAttributes setObject:shadowColor forKey:UITextAttributeTextShadowColor];
        CGSize shadowOffset = [theme shadowOffset];
        [titleTextAttributes setObject:[NSValue valueWithCGSize:shadowOffset] forKey:UITextAttributeTextShadowOffset];
    }
    [navigationBarAppearance setTitleTextAttributes:titleTextAttributes];
    
    UIColor *baseTintColor = [theme navigationTintColor];
    if (baseTintColor) {
        [navigationBarAppearance setTintColor:baseTintColor];
    }
}

+ (void)customizeBackground:(UIView *)view
{
    id <Theme> theme = [self sharedTheme];
    UIColor *backgroundColor = [theme backgroundColor];
    if (backgroundColor) {
        [view setBackgroundColor:backgroundColor];
    }
}

+ (void)customizeTitle:(UILabel *)label
{
    id <Theme> theme = [self sharedTheme];
    UIFont *font = [theme titleFont];
    if(font) {
        label.font = font;
    }
    UIColor *color = [theme titleColor];
    if(color) {
        label.textColor = color;
    }
}

+ (void)customizeSubtitle:(UILabel *)label
{
    id <Theme> theme = [self sharedTheme];
    UIFont *font = [theme subTitleFont];
    if(font) {
        label.font = font;
    }
    UIColor *color = [theme subtitleColor];
    if(color) {
        label.textColor = color;
    }
}

+ (void)customizeText:(UILabel *)label;
{
    id <Theme> theme = [self sharedTheme];
    UIFont *font = [theme textFont];
    if(font) {
        label.font = font;
    }
    UIColor *color = [theme textColor];
    if(color) {
        label.textColor = color;
    }
}
@end
