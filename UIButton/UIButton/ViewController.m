//
//  ViewController.m
//  UIButton
//
//  Created by 周传辉 on 2017/12/26.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建一个圆角按钮
- (void)creatUIButton{
    //UIButtonTypeRoundedRect圆角类型
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //位置
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    //按钮文字内容
    [btn setTitle:@"b按钮" forState:UIControlStateNormal];
    [btn setTitle:@"按钮被按下" forState:UIControlStateHighlighted];
    
    //按钮背景颜色
    btn.backgroundColor  = [UIColor grayColor];
    
    //文字颜色及状态，若不设按下状态则默认按下为UIControlStateNormal状态的颜色
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];//按下状态
    
    //设置颜色，无状态选项，优先级不如setTitleColor
    //[btn setTintColor:[UIColor orangeColor]];
    
    
    
    [self.view addSubview:btn];
    
}

//创建图片按钮
- (void)creatImageBtn{
    UIButton *btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 300, 100, 100);
    
    UIImage *icon01 = [UIImage imageNamed:@"btn01.png"];
    UIImage *icon02 = [UIImage imageNamed:@"btn02.png"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    
    [self.view addSubview:btnImage];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self creatUIButton];
    [self creatImageBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
