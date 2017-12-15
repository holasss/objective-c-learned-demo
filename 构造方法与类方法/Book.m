//
//  Book.m
//  构造方法与类方法
//
//  Created by 周传辉 on 2017/12/12.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "Book.h"

@implementation Book

-(id)init{
    self = [super init];
    if (self) {
        _name = @"sss";
        _price = 32.222;
    }
    return self;
}

-(id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

-(id)initWithPrice:(float)price{
    self = [super init];
    if (self) {
        _price = price;
    }
    return self;
}

-(id)initWithName:(NSString *)name andPrice:(float)price{
    self = [super init];
    if (self) {
        _name = name;
        _price = price;
    }
    return self;
}

//类方法的实现
+(id)bookCreat{
    Book *book = [[Book alloc] init];
    return book;
}

+(id)bookCreatWithName:(NSString *)name{
    return [[self alloc] initWithName:name];
}

+(id)bookCreatWithName:(NSString *)name andPrice:(float)price{
    return [[self alloc] initWithName:name andPrice:price];
}



-(NSString *)name{
    return _name;
}

-(float)price{
    return _price;
}



@end
