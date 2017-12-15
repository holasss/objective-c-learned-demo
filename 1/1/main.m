//
//  main.m
//  1
//
//  Created by 周传辉 on 2017/12/6.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    
    NSString *_name;
    NSInteger _age;
    
}

-(id)init;

-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;
-(void)setName:(NSString *)name andAge:(NSInteger)age;
-(void)setName:(NSString *)name :(NSInteger)age;

//类方法(+) 给类调用的方法，通常用类名调用
+(void)textStudent;

@end

@implementation Student

-(id)init{//init构造方法，初始化对象的方法
    self = [super init];
    if (self) {
        _name = @"李帅";
        _age = 12;
    }
    return self;
}

//setter修改
-(void)setName:(NSString *)name{
    _name = name;
}
-(void)setAge:(NSInteger)age{
    _age = age;
}
-(void)setName:(NSString *)name andAge:(NSInteger)age{
    _name = name;
    _age = age;
}
-(void)setName:(NSString *)name :(NSInteger)age{
    _name = name;
    _age = age;
}

//getter获取
-(NSString *)name{
    return _name;
}
-(NSInteger)age{
    return _age;
}
//(+)类方法。测试当前类是否可用。
+(void)textStudent{
    Student *stu = [[Student alloc] init];
    [stu setName:@"sss" andAge:223];
    NSLog(@"name=%@,age=%li",[stu name],[stu age]);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Student *stu = [[Student alloc] init];//Student类通过alloc方法创建一个对象stu
        NSLog(@"name=%@,age=%li",[stu name],[stu age]);
        
//        [stu setName:@"lssb"];
//        [stu setAge:34];
        [stu setName:@"lssdf" andAge:3434];//@"sdf"表示字符串对象
        NSLog(@"name=%@,age=%li",[stu name],[stu age]);
        //%@打印对象的占位符，%li打印long类型数据的占位符
        
        //调用类方法demo
        [Student textStudent];
    }
    return 0;
}
