//
//  ViewController.m
//  UIView层级关系
//
//  Created by 周传辉 on 2017/12/27.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view01 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    UIView *view02 = [[UIView alloc]initWithFrame:CGRectMake(125, 125, 150, 150)];
    UIView *view03 = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 150)];

    view01.backgroundColor = [UIColor blueColor];
    view02.backgroundColor = [UIColor orangeColor];
    view03.backgroundColor = [UIColor greenColor];
    
    //哪个视图先被添加上就先画谁，先添加的被后添加的盖在下面
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //将view01调整到最上方显示
    [self.view bringSubviewToFront:view01];
    
    //将view03调整到最下方显示
    [self.view sendSubviewToBack:view03];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
