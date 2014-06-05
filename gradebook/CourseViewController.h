//
//  courseViewController.h
//  gradebook
//
//  Created by teacher on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UITableView *courseTableView;
@property NSMutableArray *coursesArray;


@end
