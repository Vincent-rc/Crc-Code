//
//  UIView+Category.h
//  Crc-Code
//
//  Created by doudou on 9/12/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Category)

/**
 *  设置UIView背景比较节省内存的办法
 *
 *  @param image
 */
- (void)setBackgroundImage:(UIImage *)image;

/**
 *  遍历subview 获取UIViewController(self)
 */

- (UIViewController *)viewController;

/**
 *  找modal窗口中的viewController
 */
- (UIViewController *)viewControllerInModalViewController;
@end
