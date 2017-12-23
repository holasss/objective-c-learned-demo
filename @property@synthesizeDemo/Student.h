//
//  Student.h
//  @property@synthesizeDemo
//
//  Created by 周传辉 on 2017/12/23.
//  Copyright © 2017年 周传辉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    NSString *_name;
    NSInteger _score;
}
-(id)init;
-(id)initWithName:(NSString *)name andScore:(NSInteger)score;

//-(void)setName:(NSString *)name;
//-(void)setScore:(NSInteger)score;
//-(void)setName:(NSString *)name andScore:(NSInteger)score;
@property (nonatomic, assign) NSString *setName;
@property (nonatomic, assign) NSInteger score;
//@property NSString *setName and NSInteger andScore;

-(NSString *)name;
-(NSInteger)score;

-(void)printStudentInfo;
+(void)textStudentInfo;

@end
