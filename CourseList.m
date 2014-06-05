//
//  CourseList.m
//  gradebook
//
//  Created by tbredemeier on 6/5/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#define kCourseFileName @"gradebook.plist"

#import "CourseList.h"

@implementation CourseList

- (void)saveData
{
    NSURL *location = [[self documentsDirectory] URLByAppendingPathComponent:kCourseFileName];
    NSMutableDictionary *allItems = [NSMutableDictionary dictionary];

    NSMutableArray *courseDataItems = [NSMutableArray array];
    for (Course *c in self.courses)
    {
        [courseDataItems addObject:c.encode];
    }
    [allItems setObject:courseDataItems forKey:@"allMyCourses"];

    [allItems writeToURL:location atomically:YES];

    NSLog(@"data saved:\n");
    NSLog(@"%@", [self.courses firstObject]);
}

- (void)loadData
{
    NSURL *location = [[self documentsDirectory] URLByAppendingPathComponent:kCourseFileName];
    NSMutableDictionary *allItems = [NSMutableDictionary dictionaryWithContentsOfURL:location];

    self.courses = [NSMutableArray array];
    for (NSData *data in [allItems objectForKey:@"allMyCourses"])
    {
        Course *c = [[Course alloc]initWithData:data];
        [self.courses addObject:c];
    }

    NSLog(@"loaded data:\n");
    NSLog(@"%@", [self.courses firstObject]);
}

- (NSURL *)documentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
}

- (NSString *)description
{
    NSString *result;
    for(Course *course in self.courses)
    {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@", course]];
    }
    return result;
}

// the following method is for testing purposes
//- (void) testData
//{
//    Course *course = [[Course alloc]initWithName:@"Mobile Applications Development" section:@"Period 1"];
//
//    Student *student;
//    student = [[Student alloc]initWithName:@"John" lastName:@"Doe"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Sally" lastName:@"Smith"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Bob" lastName:@"Hope"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Buffalo" lastName:@"Bill"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Mary" lastName:@"Harris"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Julie" lastName:@"Jordon"];
//    [course.students addObject:student];
//    student = [[Student alloc]initWithName:@"Jim" lastName:@"Shoe"];
//    [course.students addObject:student];
//
//    Assignment *assignment;
//    assignment = [[Assignment alloc]initWithName:@"Unit 8 Test" points:@100];
//    [course.assignments addObject:assignment];
//    assignment = [[Assignment alloc]initWithName:@"Quiz 9.1" points:@20];
//    [course.assignments addObject:assignment];
//    assignment = [[Assignment alloc]initWithName:@"Project 9.2" points:@50];
//    [course.assignments addObject:assignment];
//    assignment = [[Assignment alloc]initWithName:@"Project 9.3" points:@35];
//    [course.assignments addObject:assignment];
//    assignment = [[Assignment alloc]initWithName:@"Unit 9 Test" points:@100];
//    [course.assignments addObject:assignment];
//
//    [self.courses addObject:course];
//    NSLog(@"test data:\n");
//    NSLog(@"%@", [self.courses firstObject]);
//}


@end
