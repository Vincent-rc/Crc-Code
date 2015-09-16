//
//  UIView+Category.m
//  Crc-Code
//
//  Created by doudou on 9/12/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)


- (UIViewController *)viewController{
    for (UIView *view = self; view; view = view.superview) {
        if ([view.nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)view.nextResponder;
        }
    }
    return nil;
}

- (UIViewController *)viewControllerInModalViewController{
    for (UIView *view = self; view; view = view.superview) {
        if ([view.nextResponder isKindOfClass:[UIViewController class]] ) {
            UIViewController* vcl = (UIViewController *)view.nextResponder;
            if ( vcl.navigationController != nil) {
                return (UIViewController *)view.nextResponder;
            }
        }
    }

    return nil;
}

//获取当前屏幕显示的viewcontroller
- (UIViewController *)getCurrentViewController
{
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal)
    {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows)
        {
            if (tmpWin.windowLevel == UIWindowLevelNormal)
            {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}


- (void)setBackgroundImage:(UIImage *)image{
    self.layer.contents = (id) image.CGImage;
}

@end
