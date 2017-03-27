//
//  RedViewController.m
//  利用协议跳转记性控制器间跳转
//
//  Created by weidong liu on 2017/3/26.
//  Copyright © 2017年 weidong liu. All rights reserved.
//

#import "RedViewController.h"
#import "EventsProtocol.h"
@interface RedViewController () <EventsProtocol>

@property (nonatomic, copy) NSString *title1;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = self.title1;
}

+ (BOOL)checkParam:(id)param {
    if (param && [param isKindOfClass:[NSString class]]) {
        return YES;
    }
    return NO;
}

+ (id)viewControllerWithParam:(id)param {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RedViewController *vc = [sb instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
    vc.title1 = param;
    return vc;
}

@end
