//
//  Students.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Student.h"

/* this is an individual Student object that contains the following properties:
 .uid            a computer generated unique id for the object
 .firstName      the first name of the student
 .lastName       the last name of the student
        NOTE: individual Student objects are contained in Course object property that is a mutable array
 */

@implementation Student

-(id) initWithName:(NSString *)firstName lastName:(NSString *)lastName
{
    self = [super init];

    self.uid = [NSUUID UUID];
    self.firstName = firstName;
    self.lastName = lastName;

    return self;
}

-(id) initWithData:(NSData *)data
{
    self = [super init];

    NSArray *result = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.uid = result[0];
    self.firstName = result[1];
    self.lastName = result[2];
    return self;
}

- (NSData *)encode
{
    return [NSKeyedArchiver archivedDataWithRootObject:@[self.uid, self.firstName,self.lastName]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\t%@ %@\n", self.firstName, self.lastName];
}

@end
