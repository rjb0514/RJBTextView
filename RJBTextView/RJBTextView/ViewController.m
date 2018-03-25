//
//  ViewController.m
//  RJBTextView
//
//  Created by 茹 on 2018/3/21.
//  Copyright © 2018年 kkx. All rights reserved.
//

#import "ViewController.h"
#import "RJBTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"自定义textView";
    
    RJBTextView *textView = [RJBTextView new];
    textView.frame = self.view.bounds;
    [self.view addSubview:textView];
    //设置占位文字
    textView.placeholder = @"我是占位文字房间大路口附近打死了防静电拉设计费老大撒解放路的撒解放路傻到家了";
    //设置占位颜色
    textView.placeholderColor = [UIColor greenColor];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
