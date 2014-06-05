//
//  Grade.h
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grade : NSObject
@property NSString *studentUID;
@property NSString *assignmentUID;
@property NSNumber *score;

-(id) initWithStudentUID:(NSString *)uid assignmentUID:(NSString *)assignmentUID score:(NSNumber *)score;

-(id) initWithData:(NSData *)data;
-(NSData *)encode;

@end
