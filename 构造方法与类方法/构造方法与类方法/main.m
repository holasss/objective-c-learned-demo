//
//  main.m
//  构造方法与类方法
//
//  Created by 周传辉 on 2017/12/12.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Book *book1 = [[Book alloc] init];
        NSLog(@"bookName=%@,bookPrice=%.5f",[book1 name],[book1 price]);
        
        Book *book2 = [[Book alloc] initWithName:@"sssssssssbbbbbb" andPrice:23.44];
        NSLog(@"bookName=%@,bookPrice=%.5f",[book2 name],[book2 price]);
        
        //通过类方法创建对象,类方法创建的对象不需要再调用构造方法(init)进行初始化,类方法只能给类本身调用
        Book *book3 = [Book bookCreat];
        NSLog(@"book3Name=%@,price=%.2f",[book3 name],[book3 price]);
        
        
        
        
        
    return 0;
    }
}
