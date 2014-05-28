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
@property (weak, nonatomic) IBOutlet UISlider *slider;

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
    
    int sliderValue = roundf(_slider.value);
    
    NSString *keyValueWT = [NSString stringWithFormat: @"workoutTimeText%ld", (unsigned long)sliderValue];
    NSString *keyValueCB = [NSString stringWithFormat: @"caloriesBurnedText%ld", (unsigned long)sliderValue];
    NSString *keyValueDT = [NSString stringWithFormat: @"distanceTraveledText%ld", (unsigned long)sliderValue];
    NSString *keyValueHR = [NSString stringWithFormat: @"heartRateText%ld", (unsigned long)sliderValue];
    
    NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
    self.workoutTimeGoal.text = [fitNourishGlobals stringForKey:keyValueWT];
    self.caloriesBurnedGoal.text = [fitNourishGlobals stringForKey:keyValueCB];
    self.distanceTraveledGoal.text = [fitNourishGlobals stringForKey:keyValueDT];
    self.heartRateGoal.text = [fitNourishGlobals stringForKey:keyValueHR];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderMoved:(UISlider *)slider
{
    int sliderValue = roundf(slider.value);
    //NSLog(@"The value of the slider is now: %d", sliderValue);
    self.day.text = [NSString stringWithFormat:@"Day %d", sliderValue];
}


@end
