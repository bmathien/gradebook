//
//  Assignments.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "Assignment.h"

/* this is an individual Assignment object that contains the following properties:
 .uid           a computer generated unique id for the object
 .name          the name of the assignment
 .points        the total number of points the assignment is worth
 NOTE: individual Assignment objects are contained in Course object property that is a mutable array
 */

@implementation Assignment

-(id) initWithName:(NSString *)name points:(NSNumber *)points
{
    self = [super init];

    self.uid = [NSUUID UUID];
    self.name = name;
    self.points = points;

    return self;
}

-(id) initWithData:(NSData *)data
{
    self = [super init];

    NSArray *result = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    self.uid = result[0];
    self.name = result[1];
    self.points = result[2];
    return self;
}

- (NSData *)encode
{
    return [NSKeyedArchiver archivedDataWithRootObject:@[self.uid, self.name, self.points]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\t%@   \t%@ points\n", self.name, self.points];
}

@end
