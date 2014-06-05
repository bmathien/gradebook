//
//  Assignments.h
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Assignment : NSObject

@property (nonatomic, strong) NSString *uid;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *points;

-(id) initWithName:(NSString *)name points:(NSNumber *)points;

-(id) initWithData:(NSData *)data;
-(NSData *)encode;

@end
