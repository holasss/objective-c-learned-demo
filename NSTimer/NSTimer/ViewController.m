//
//  ViewController.m
//  NSTimer
//
//  Created by 周传辉 on 2017/12/31.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"start" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 400, 100, 100);
    [btn2 setTitle:@"stop" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor yellowColor];
    [btn2 addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor blueColor];
    view.frame = CGRectMake(0, 0, 80, 80);
    [self.view addSubview:view];
    view.tag = 101;
    
}

-(void)pressStart{
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    
    
    
}

-(void)pressStop{
    if (_timerView != nil) {
        [_timerView invalidate];
    }
    
    
}

-(void)updateTimer{
    NSLog(@"11112222");
    UIView *view = [self.view viewWithTag:101];
    CGRect rect = [[UIScreen mainScreen] bounds];
    
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, 80, 80);
    
    
    if (view.frame.origin.x == rect.size.width-80) {
        [_timerView invalidate];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
