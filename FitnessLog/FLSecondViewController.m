//
//  FLSecondViewController.m
//  FitnessLog
//
//  Created by spramanick on 2/25/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLSecondViewController.h"
#import "FLFirstViewController.h"

@interface FLSecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *day;
@property (weak, nonatomic) IBOutlet UILabel *workoutTimeGoal;
@property (weak, nonatomic) IBOutlet UILabel *caloriesBurnedGoal;
@property (weak, nonatomic) IBOutlet UILabel *distanceTraveledGoal;
@property (weak, nonatomic) IBOutlet UILabel *heartRateGoal;
@property (weak, nonatomic) IBOutlet UITabBarItem *viewGoalsTab;

@end

@implementation FLSecondViewController


//- (IBAction)viewGoalClicked:(id)sender{
    //NSUserDefaults *wt = [NSUserDefaults standardUserDefaults];
    //self.workoutTimeGoal.text = [wt stringForKey:@"workoutTimeText"];
    //NSUserDefaults *cb = [NSUserDefaults standardUserDefaults];
    //self.caloriesBurnedGoal.text = [cb stringForKey:@"caloriesBurnedText"];
    //NSUserDefaults *dt = [NSUserDefaults standardUserDefaults];
    //self.distanceTraveledGoal.text = [dt stringForKey:@"distanceTraveledText"];
    //NSUserDefaults *hr = [NSUserDefaults standardUserDefaults];
    //self.heartRateGoal.text = [hr stringForKey:@"heartRateText"];
//}





- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // You code here to update the view.
    NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
    self.workoutTimeGoal.text = [fitNourishGlobals stringForKey:@"workoutTimeText"];
    self.caloriesBurnedGoal.text = [fitNourishGlobals stringForKey:@"caloriesBurnedText"];
    self.distanceTraveledGoal.text = [fitNourishGlobals stringForKey:@"distanceTraveledText"];
    self.heartRateGoal.text = [fitNourishGlobals stringForKey:@"heartRateText"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
