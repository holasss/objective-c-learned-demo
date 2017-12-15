//
//  Person.h
//  分文件创建类
//
//  Created by 周传辉 on 2017/12/11.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>
//声明一个类
@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
    
}

-(id)init;
-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger)age;
-(void)setName:(NSString *)name andAge:(NSInteger)age;


-(NSString *)name;
-(NSInteger)age;

-(void)print;

+(void)testPerson;


@end
