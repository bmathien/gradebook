//
//  CourseDetailView.m
//  gradebook
//
//  Created by teacher on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "CourseDetailView.h"
#import "CourseViewController.h"
@interface CourseDetailView ()
@property (weak, nonatomic) IBOutlet UITextField *courseNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *sectionNameTextField;
@end

@interface CourseDetailView ()


@end
@implementation CourseDetailView

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.course = [[Course alloc] init];
}
- (IBAction)onCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void) viewWillDisappear:(BOOL)animated
{
    self.course.name = self.courseNameTextField.text;
    self.course.section = self.sectionNameTextField.text;
}

@end
