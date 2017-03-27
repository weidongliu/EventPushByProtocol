//
//  ViewController.m
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import "ViewController.h"
#import "EventManager.h"
#import "PushEventsRegisterd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (IBAction)pushClick:(UIButton *)sender {
    
    if (sender.tag == 1) {
        //跳转黄色控制器
        [EventManager pushViewController:KEventYellowController param:nil];
    } else{
        //跳转绿色控制器
        [EventManager pushViewController:KEventRedController param:@"hhaahahaha"];
    }
}

@end
