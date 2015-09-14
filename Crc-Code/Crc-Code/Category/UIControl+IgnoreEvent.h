//
//  UIControl+IgnoreEvent.h
//  Crc-Code
//
//  Created by doudou on 9/14/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (IgnoreEvent)

@property (nonatomic, assign) NSTimeInterval acceptEventInterval;   // 可以用这个给重复点击加间隔
@property (nonatomic, assign) BOOL ignoreEvent;

@end
