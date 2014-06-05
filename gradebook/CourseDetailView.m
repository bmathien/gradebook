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



}
-(IBAction)doneButtonTapped:(id)sender
{
    self.courseNameTextField = 

    self.course = [[Course alloc] initWithName:self.courseNameTextField.text
                                       section:self.sectionNameTextField.text];



   
}
@end
