//
//  Course.m
//  gradebook
//
//  Created by Joanne McNamee on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Course.h"

@implementation Course
-(Course *)initWithName: (NSString *)name section: (NSString *)section
{
    self.name = name;
    self.section = section;
    return self;
}


@end
