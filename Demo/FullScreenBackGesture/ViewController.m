//
//  ViewController.m
//  FullScreenBackGesture
//
//  Created by ZHANGZHONGYANG on 2016/11/29.
//  Copyright © 2016年 ZHANGZHONGYANG. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)clickAction
{
    PushViewController *VC = [[PushViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
    
}


@end
