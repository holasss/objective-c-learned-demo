//
//  ViewController.m
//  UIView
//
//  Created by 周传辉 on 2017/12/27.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUIView{
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(100, 100, 100, 100);
    view.backgroundColor = [UIColor yellowColor];



    //透明度 范围：0~1
    //0表示透明
    ///0.5半透明
    //1不透明
    view.alpha = 1;
    
    //设置view隐藏，默认NO（不隐藏）
    //YES：隐藏
    view.hidden = NO;
    
    //设置主界面背景，测试view透明度
    super.view.backgroundColor = [UIColor cyanColor];
    
    view.opaque = YES;
    //从父亲视图移除
    [view removeFromSuperview];
    
    [self.view addSubview:view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //方法2
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    //    view.frame = CGRectMake(100, 100, 100, 100);
//    view.backgroundColor = [UIColor yellowColor];
//    //透明度
//    view.alpha = 1;
//    self.view.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:view];
//
    

    
    //调用
    [self createUIView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
