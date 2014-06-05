//
//  Course.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Course.h"
#import "Assignment.h"
#import "Student.h"
#import "Grade.h"

// this is an individual Course object that contains the following properties

@interface Course()

@end

@implementation Course

-(id) initWithName:(NSString *)name section:(NSString *)section
{
    self = [super init];

    self.name = name;
    self.section = section;
    self.students = [NSMutableArray array];
    self.assignments = [NSMutableArray array];
    return self;
}

-(id) initWithData:(NSData *)data
{
    self = [super init];

    NSArray *result = [NSKeyedUnarchiver unarchiveObjectWithData:data];

    self.name = result[0];
    self.section = result[1];
    self.students = [NSMutableArray array];
    NSArray *encodedStudents = result[2];
    for (NSData *d in encodedStudents)
    {
        Student *s = [[Student alloc] initWithData:d];
        [self.students addObject:s];
    }

    self.assignments = [NSMutableArray array];
    NSArray *encodedAssignments = result[3];
    for (NSData *d in encodedAssignments)
    {
        Assignment *a = [[Assignment alloc] initWithData:d];
        [self.assignments addObject:a];
    }

    return self;
}

- (NSData *)encode
{
    NSMutableArray *encodedStudents = [NSMutableArray array];
    for (Student *s in self.students)
    {
        [encodedStudents addObject:s.encode];
    }

    NSMutableArray *encodedAssignments = [NSMutableArray array];
    for (Assignment *a in self.assignments)
    {
        [encodedAssignments addObject:a.encode];
    }

    return [NSKeyedArchiver archivedDataWithRootObject:@[self.name, self.section, encodedStudents, encodedAssignments]];
}

- (NSString *)description
{
    NSString *result = [NSString stringWithFormat:@"Course: %@  Section: %@", self.name, self.section];
    result = [result stringByAppendingString:@"\nStudents:\n"];
    for(Student *s in self.students)
    {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@",s]];
    }

    result = [result stringByAppendingString:@"\nAssignments:\n"];
    for(Assignment *a in self.assignments)
    {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@",a]];
    }
    return result;
}

@end
