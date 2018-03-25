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
    //测试textView的frame改变了 占位文字跟着变
    textView.frame = CGRectMake(0, 0, 200, 500);
    [self.view addSubview:textView];
    //设置占位文字
    textView.placeholder = @"我是占位文字房间大路口附近打死了防静电拉设计费老大撒解放路的撒解放路傻到家了";
    //设置占位颜色
    textView.placeholderColor = [UIColor greenColor];
    
    
    //测试textView的frame改变了 占位文字跟着变
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        textView.frame = CGRectMake(0, 0, 200, 500);
         textView.frame = self.view.bounds;
    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
