//
//  ViewController.m
//  UILabel
//
//  Created by 周传辉 on 2017/12/25.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)creatUI{
    
    UILabel *label = [[UILabel alloc] init];
    
    //设置文字
    label.text = @"hello world!!!!!!!!!!!!!!!!!!!!!!!!!!!!11111";
    
    //位置
    label.frame = CGRectMake(100, 100, 160, 140);
    
    //背景颜色,clearColor表示透明色
    label.backgroundColor = [UIColor grayColor];

    //显示label到屏幕
    [self.view addSubview:label];
    
    //字体大小12号字
    label.font = [UIFont systemFontOfSize:22];
    
    //字体颜色
    label.textColor = [UIColor redColor];
    
    //阴影颜色
    label.shadowColor = [UIColor grayColor];
    
    //阴影的偏移位置
    label.shadowOffset = CGSizeMake(5, 5);
    
    //设置文字对齐模式 center居中
    label.textAlignment = NSTextAlignmentCenter;
    
    //设定label文字显示行数,默认为1,自适应行数为0
    label.numberOfLines = 0;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //调用creatUI方法
    [self creatUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
