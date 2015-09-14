//
//  UIControl+IgnoreEvent.m
//  Crc-Code
//
//  Created by doudou on 9/14/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import "UIControl+IgnoreEvent.h"
#import <objc/runtime.h>

@implementation UIControl (IgnoreEvent)

static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";
static const char *UIControl_ignoreEvent = "UIControl_ignoreEvent";

+ (void)load
{
    Method a = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method b = class_getInstanceMethod(self, @selector(__sendAction:to:forEvent:));
    method_exchangeImplementations(a, b);
}

- (NSTimeInterval)acceptEventInterval
{
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}
- (void)setAcceptEventInterval:(NSTimeInterval)acceptEventInterval
{
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)ignoreEvent{
    return [objc_getAssociatedObject(self, UIControl_ignoreEvent) boolValue];
}

- (void)setIgnoreEvent:(BOOL)ignoreEvent{
    objc_setAssociatedObject(self, UIControl_ignoreEvent, @(ignoreEvent), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)__sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event
{
    if (self.ignoreEvent) return;
    if (self.acceptEventInterval > 0)
    {
        self.ignoreEvent = YES;
        [self performSelector:@selector(setIgnoreEvent:) withObject:@(NO) afterDelay:self.acceptEventInterval];
    }
    [self __sendAction:action to:target forEvent:event];
}

@end
