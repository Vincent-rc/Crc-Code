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


- (void)setBackgroundImage:(UIImage *)image{
    self.layer.contents = (id) image.CGImage;
}

@end
