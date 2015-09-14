//
//  ThirdPartService.m
//  Crc-Code
//
//  Created by doudou on 9/13/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#import "ThirdPartService.h"
//#import <Mobclick.h>

@implementation ThirdPartService

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
//        [Mobclick setAppKey:@"XX"];    //    隐藏未安装的平台
    });
    
}

@end
