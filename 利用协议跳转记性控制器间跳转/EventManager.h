//
//  EventManager.h
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventManager : NSObject

/** 最上层控制器*/
@property (nonatomic, strong) UIViewController *topVc;

+ (instancetype)shareInstance;

+ (BOOL)pushViewController:(NSString *)className param:(id)param;

@end
