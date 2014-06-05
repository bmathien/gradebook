//
//  Grade.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Grade.h"
#import "Student.h"
#import "Assignment.h"

@implementation Grade

-(id) initWithStudentUID:(NSString *)studentUID assignmentUID:(NSString *)assignmentUID score:(NSNumber *)score
{
    self = [super init];

    self.studentUID = studentUID;
    self.assignmentUID = assignmentUID;
    self.score = score;

    return self;
}

-(id) initWithData:(NSData *)data
{
    self = [super init];

    NSArray *result = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.studentUID = result[0];
    self.assignmentUID = result[1];
    self.score= result[2];
    return self;
}

- (NSData *)encode
{
    return [NSKeyedArchiver archivedDataWithRootObject:@[self.studentUID, self.assignmentUID, self.score]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\tscore%@\n", self.score];
}

@end
