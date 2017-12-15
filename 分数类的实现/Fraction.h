//
//  Fraction.h
//  分数类的实现
//
//  Created by 周传辉 on 2017/12/13.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject{
    NSInteger _numerator;       //分子
    NSInteger _denominator;     //分母
}
//构造方法
-(id)initWithNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator;

//setter方法
-(void)setNumerator:(NSInteger)numerator;
-(void)setDenominator:(NSInteger)denominator;
-(void)setNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator;

//getter方法
-(NSInteger)numerator;
-(NSInteger)denominator;

//运算
-(void)addFraction:(Fraction *)aFraction;   //+
-(void)subFraction:(Fraction *)aFraction;   //-
-(void)mulFraction:(Fraction *)aFraction;   //*
-(void)divFraction:(Fraction *)aFraction;   // /

//分数约分
-(void)reduce;

//打印分数
-(void)printFraction;




@end
