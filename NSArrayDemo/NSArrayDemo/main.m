//
//  main.m
//  NSArrayDemo
//
//  Created by 周传辉 on 2017/12/15.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSArray创建不可变数组对象
//oc中的数组是对象的有序集合，每一个元素都是一个对象

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array1 = @[@"one",@"two",@"three",[NSNumber numberWithInt:123]];
        NSLog(@"array1=%@",array1);
        
        //通过传入数组的元素创建数组对象。
        NSArray *array3 = [[NSArray alloc] initWithObjects:@"four",@"five",@"six", nil];//nil表示结束
        
    }
    return 0;
}
