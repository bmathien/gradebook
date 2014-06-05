//
//  CourseDetailView.h
//  gradebook
//
//  Created by teacher on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface CourseDetailView : UIViewController

@property UITextField *inputTextField;

@property (nonatomic, strong) Course *course;

@end
