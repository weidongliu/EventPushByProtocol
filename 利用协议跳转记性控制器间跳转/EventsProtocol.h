//
//  EventsProtocol.h
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EventsProtocol <NSObject>

+ (BOOL)checkParam:(id)param;

+ (id)viewControllerWithParam:(id)param;

@end
