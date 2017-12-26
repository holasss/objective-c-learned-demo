//
//  ViewController.m
//  UIButtonAction
//
//  Created by 周传辉 on 2017/12/26.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//按钮事件处理
@implementation ViewController

- (void)createBtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    //添加按钮事件函数
    //p1: addTarget 谁来实现事件函数，实现的对象就是谁
    //@selector()括号内添加函数对象，当按钮满足P3()事件类型事，调用函数
    //UIControlEvent：事件处理函数类型
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(100, 200, 80, 40);
    [btn02 setTitle:@"按钮2" forState:UIControlStateNormal];
    
    //多个按钮可调用同一个事件函数
    //一个按钮可添加多个事件函数
    [btn02 addTarget:self action:@selector(touch:) forControlEvents:UIControlEventTouchUpInside];
    [btn02 addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btn02];
}

- (void)pressBtn{
    NSLog(@"按钮被按下");
}
//带参函数动作
- (void)touch:(UIButton *)btn{
    NSLog(@"touch");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createBtn];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
