//
//  ViewController.m
//  gradebook
//
//  Created by tbredemeier on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#define kCourseFileName @"gradebook.plist"


#import "ViewController.h"
#import "CourseViewController.h"
#import "CourseList.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myStartButton;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.courseList = [[CourseList alloc]init];
    [self.courseList loadData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [self.courseList saveData];
}

- (IBAction)onStartButtonPressed:(id)sender
{
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    CourseViewController *nextViewController = [segue destinationViewController];
    nextViewController.coursesArray = self.courseList.courses;
}


//- (IBAction)unwindFromAdventureViewController:(UIStoryboardSegue *)segue
//{
//    AdventureViewController *pastViewController = [segue sourceViewController];
//    self.title = pastViewController.message;
//}


@end