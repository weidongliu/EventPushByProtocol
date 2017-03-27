//
//  YellowViewController.m
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import "YellowViewController.h"
#import "EventsProtocol.h"
@interface YellowViewController () <EventsProtocol>

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (BOOL)checkParam:(id)param {//每个控制器都可以根据参数不同类型，在自己内部转换
    if (param && [param isKindOfClass:[NSString class]]) {//如果不是控制器需要传进的参数则不跳转
        return YES;
    }
    return YES;
}

+ (id)viewControllerWithParam:(id)param {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return [sb instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}



@end
