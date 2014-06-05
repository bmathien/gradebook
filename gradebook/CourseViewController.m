//
//  CourseViewController.m
//  gradebook
//
//  Created by teacher on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "CourseViewController.h"
#import "Course.h"
#import "CourseDetailView.h"

@interface UIViewController ()<UITableViewDelegate, UITableViewDataSource>

@property IBOutlet UITextField *inputTextField;

@end

@implementation CourseViewController

- (IBAction)onStudentButtonPressed:(id)sender {
    
}
- (IBAction)onAssignmentButtonPressed:(id)sender {
}
- (IBAction)onAddButtonPressed:(id)sender {


}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.coursesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCourseCellID"];
    Course *course   =   [self.coursesArray objectAtIndex:indexPath.row];
    cell.textLabel.text = course.name;
    cell.detailTextLabel.text = course.section;
    return cell;
}

- (IBAction)unwindFromCourseDetailViewController:(UIStoryboardSegue *)sender
{

    NSLog(@"Course Info Logged!!!");

}

@end
