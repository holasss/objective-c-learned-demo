//
//  Person.m
//  分文件创建类
//
//  Created by 周传辉 on 2017/12/11.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "Person.h"
//实现一个类
@implementation Person

-(id)init{
    self = [super init];
    if (self) {
        _name = @"sdfss";
        _age = 233;
    }
    return self;
}

-(void)setName:(NSString *)name{
    _name = name;
}

-(void)setAge:(NSInteger)age{
    _age = age;
}

-(void)setName:(NSString *)name andAge:(NSInteger)age{
    //实例变量的访问方式
    //1.直接访问
//    _name = name;
//    _age = age;
    
    //2.间接访问
//    [self setName:name];
//    [self setAge:age];
    
    //3.通过self指针直接访问
    self->_name = name;
    self->_age = age;
}

-(NSString *)name{
    return _name;
}

-(NSInteger)age{
    return _age;
}

-(void)print{
    NSLog(@"name=%@,age=%ld",[self name],[self age]);
}

+(void)testPerson{
    Person *per = [Person alloc];//alloc创建一个对象
    per = [per init];
    [per print];
    
    //对于一个对象只能初始化一次
    Person *per1 = [[Person alloc] init];
    //对象指针：保存对象的内存地址，通过对象的内存地址访问对象
    //对象：通过alloc方法开辟的一块内存
    
    [per1 setName:@"aaaaa" andAge:122];
    [per1 print];
    
}

@end
