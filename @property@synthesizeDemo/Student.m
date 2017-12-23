//
//  Student.m
//  @property@synthesizeDemo
//
//  Created by 周传辉 on 2017/12/23.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)init{
    self = [super init];
    if (self) {
        _name = @"sb";
        _score = 123;
    }
    return self;
}

-(id)initWithName:(NSString *)name andScore:(NSInteger)score{
    self = [super init];
    if (self) {
        _name = name;
        _score = score;
    }
    return self;
}

//-(void)setName:(NSString *)name{
//    _name = name;
//}
//-(void)setScore:(NSInteger)score{
//    _score = score;
//}
//-(void)setName:(NSString *)name andScore:(NSInteger)score{
//    _name = name;
//    _score = score;
//}


//@synthesize name = _name;  不需要在.h中实例变量
//@synthesize score = _score;
@synthesize name;
@synthesize score;


//若@synthesize name = _name;@synthesize score = _score;不需要实现以下getter方法
-(NSString *)name{
    return _name;
}
-(NSInteger)score{
    return _score;
}

+(void)textStudentInfo{
    Student *stu = [[Student alloc] init];
    [stu printStudentInfo];

    Student *stu1 = [[Student alloc] initWithName:@"hola" andScore:1212];
    [stu1 printStudentInfo];
}
-(void)printStudentInfo{
    NSLog(@"name:%@,score:%ld",self.name,self.score);//运用(.)点语法
    NSLog(@"-------------------------------------");
    NSLog(@"name:%@,score:%ld",[self name],[self score]);
}


@end
