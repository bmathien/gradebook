//
//  MetaData.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "MetaData.h"
#import "Course.h"
#import "Assignment.h"
#import "Student.h"
#import "Grade.h"

// this class represents the sum of the gradebook components (Course, Assignment, Student, and Grade data)

@interface MetaData()

@end

@implementation MetaData

- (void)saveData
{
    NSURL *plist = [[self documentsDirectory]URLByAppendingPathComponent:@"gradebook.plist"];
//    [self.toothPasteArray writeToURL:plist atomically:YES];
//
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults setObject:[NSDate date] forKey:kLatestUpdatekey];
//    [defaults synchronize];
}

- (void)loadData
{
    NSURL *plist = [[self documentsDirectory]URLByAppendingPathComponent:@"gradebook.plist"];
//    self.toothPasteArray = [NSMutableArray arrayWithContentsOfURL:plist];
//    if (!self.toothPasteArray)
//    {
//        self.toothPasteArray = [NSMutableArray array];
//    }
}

- (NSURL *)documentsDirectory
{
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
}


@end
