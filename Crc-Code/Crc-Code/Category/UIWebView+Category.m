//
//  UIWebView+Category.m
//  Crc-Code
//
//  Created by doudou on 9/12/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import "UIWebView+Category.h"

@implementation UIWebView (Category)

- (void)clearCookies:(NSString *)url{
    NSHTTPCookieStorage* cookies = [NSHTTPCookieStorage sharedHTTPCookieStorage];
    NSArray* urlCookies = [cookies cookiesForURL:[NSURL URLWithString:url]];
    
    for (NSHTTPCookie* cookie in urlCookies) {
        [cookies deleteCookie:cookie];
    }
}

@end
