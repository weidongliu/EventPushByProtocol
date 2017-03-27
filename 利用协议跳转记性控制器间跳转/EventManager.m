//
//  EventManager.m
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import "EventManager.h"
#import <objc/runtime.h>
#import "EventsProtocol.h"

@implementation EventManager

+ (instancetype)shareInstance {
    static id manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[[self class] alloc] init];
    });
    return manager;
}

- (BOOL)pushViewController:(UIViewController *)vc {
    if (self.topVc.navigationController) {
        [self.topVc.navigationController pushViewController:vc animated:YES];
        return YES;
    }
    return NO;
}

+ (BOOL)pushViewController:(NSString *)className param:(id)param {
    Class<EventsProtocol> receiveClass = NSClassFromString(className);
    if (class_conformsToProtocol(receiveClass, @protocol(EventsProtocol))) {
        if ([receiveClass checkParam:param]) {
            id receiveItem = [receiveClass viewControllerWithParam:param];
            if (receiveItem && [receiveItem isKindOfClass:[UIViewController class]]) {
                return [[self shareInstance] pushViewController:receiveItem];
            } else {
                NSLog(@"没有找到控制器");
            }
        } else {
            NSLog(@"参数错误");
        }
    } else {
        NSLog(@"未遵守协议");
    }
    return NO;
}

@end
