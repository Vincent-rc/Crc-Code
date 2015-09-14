//
//  Clang-Snippets.h
//  Crc-Code
//
//  Created by doudou on 9/12/15.
//  Copyright (c) 2015 Crc. All rights reserved.
//

#ifndef Crc_Code_Clang_Snippets_h
#define Crc_Code_Clang_Snippets_h

//忽略未使用函数警告
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-function”
static int aaa(){}
#pragma clang diagnostic pop

//忽略arc performSelector leaks
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
[ item.event_target performSelector: item.sector];
#pragma clang diagnostic pop




#endif
