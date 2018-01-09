//
//  ViewController.m
//  UISwitch
//
//  Created by 周传辉 on 2018/1/9.
//  Copyright © 2018年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _mySwitch = [[UISwitch alloc] init];
    _mySwitch.frame = CGRectMake(100, 100 , 100, 100);//对于switch控件 后两个参数值无效
    
    [self.view addSubview:_mySwitch];
    
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    
}
-(void)swChange:(UISwitch *)sw{
    if (_mySwitch.on == YES) {
        self.view.backgroundColor = [UIColor orangeColor];
    }else{
        self.view.backgroundColor = [UIColor grayColor];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
