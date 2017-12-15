//
//  Book.h
//  构造方法与类方法
//
//  Created by 周传辉 on 2017/12/12.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject{
    NSString *_name;
    float _price;
}
//构造方法也叫初始化方法
//带参数的构造方法必须以 initWithXXX 开头

//不带参数
-(id)init;

//带一个参数
-(id)initWithName:(NSString *)name;
-(id)initWithPrice:(float)price;

//带两个参数
-(id)initWithName:(NSString *)name andPrice:(float)price;

//类方法
+(id)bookCreat;
+(id)bookCreatWithName:(NSString *)name;
+(id)bookCreatWithPrice:(float)price;
+(id)bookCreatWithName:(NSString *)name andPrice:(float)price;


-(NSString *)name;
-(float)price;


@end
