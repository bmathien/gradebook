//
//  Course.h
//  gradebook
//
//  Created by Joanne McNamee on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *section;

//@property (nonatomic, strong) NSDictionary *courseDictionary;

-(Course *)initWithName: (NSString *)name section: (NSString *)section;

@end
