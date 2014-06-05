//
//  Course.h
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *section;
@property (nonatomic, strong) NSMutableArray *students;
@property (nonatomic, strong) NSMutableArray *assignments;
@property (nonatomic, strong) NSMutableArray *grades;

-(id) initWithName:(NSString *)name section:(NSString *)section;

-(id) initWithData:(NSData *)data;
-(NSData *)encode;

@end
