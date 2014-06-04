//
//  ViewController.m
//  gradebook
//
//  Created by teacher on 6/4/14.
//  Copyright (c) 2014 Mathien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myStartButton;
@property NSArray *courses;
@property NSArray *assignments;
@property NSArray *students;
@property NSArray *grades;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [MetaData loadData];
}
- (IBAction)onStartButtonPressed:(id)sender {
}



@end
