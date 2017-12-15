//
//  Fraction.m
//  分数类的实现
//
//  Created by 周传辉 on 2017/12/13.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(id)initWithNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator{
    if (self = [super init]) {
        _numerator = numerator;
        _denominator = denominator;
    }
    return self;
}


//setter方法实现
-(void)setNumerator:(NSInteger)numerator{
    _numerator = numerator;
}

-(void)setDenominator:(NSInteger)denominator{
    _denominator = denominator;
}

-(void)setNumerator:(NSInteger)numerator andDenominator:(NSInteger)denominator{
    _numerator = numerator;
    _denominator = denominator;
}

//getter方法实现

-(NSInteger)numerator{
    return _numerator;
}

-(NSInteger)denominator{
    return _denominator;
}

//运算实现
-(void)addFraction:(Fraction *)aFraction{
    _numerator = [self numerator] * [aFraction denominator] + [aFraction numerator] * [self denominator];
    _denominator = [self denominator] * [aFraction denominator];
    
}

-(void)subFraction:(Fraction *)aFraction{
    _numerator = [self numerator] * [aFraction denominator] - [aFraction numerator] * [self denominator];
    _denominator = [self denominator] * [aFraction denominator];

}

-(void)mulFraction:(Fraction *)aFraction{
    _numerator = [self numerator] * [aFraction numerator];
    _denominator = [self denominator] * [aFraction denominator];
}

-(void)divFraction:(Fraction *)aFraction{
    _numerator = [self numerator] * [aFraction denominator];
    _denominator = [self denominator] * [aFraction numerator];
}

//约分实现(利用辗转相除法求最大公约数)
-(void)reduce{
    NSInteger n = _numerator;
    NSInteger d = _denominator;
    while (d) {
        NSInteger temp = n%d;
        n = d;
        d = temp;
    }
    
    _numerator /= n;
    _denominator /= n;
    
    
}







@end
