//
//  FLFirstViewController.m
//  FitnessLog
//
//  Created by spramanick on 2/25/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLFirstViewController.h"

@interface FLFirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *day;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UITextField *workoutTimeText;
@property (weak, nonatomic) IBOutlet UITextField *caloriesBurnedText;
@property (weak, nonatomic) IBOutlet UITextField *distanceTraveledText;
@property (weak, nonatomic) IBOutlet UITextField *heartRateText;
@property (weak, nonatomic) IBOutlet UIButton *saveGoals;

@property NSString *workoutTime1;
@property NSString *caloriesBurned1;
@property NSString *distanceTraveled1;
@property NSString *heartRate1;

@end

@implementation FLFirstViewController

//- (IBAction)slideTheSlider:(id)sender{
  //   self.label.text = [NSString stringWithFormat:@"%d", _daySlider.value];
//}

- (IBAction)removeKeyboard:(UITextField *)workoutTimeText{
    [self.workoutTimeText resignFirstResponder];
}

- (IBAction)removeKeyboard2:(UITextField *)caloriesBurnedText{
    [self.caloriesBurnedText resignFirstResponder];
}

- (IBAction)removeKeyboard3:(UITextField *)distanceTraveledText{
    [self.distanceTraveledText resignFirstResponder];
}

- (IBAction)removeKeyboard4:(UITextField *)heartRateText{
    [self.heartRateText resignFirstResponder];
}

- (IBAction)saveGoalsClicked:(id)sender
{
    NSMutableArray *smritiTime = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
        
    NSMutableArray *smritiCalories = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
        
    NSMutableArray *smritiDistance = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
        
    NSMutableArray *smritiHeart = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
        
    int sliderValue = roundf(_slider.value);
        
    smritiTime[sliderValue] = self.workoutTimeText.text;
    smritiCalories[sliderValue] = self.caloriesBurnedText.text;
    smritiDistance[sliderValue] = self.distanceTraveledText.text;
    smritiHeart[sliderValue] = self.heartRateText.text;
    
    //NSString *keyValue = [@"workoutTimeText%ld", (unsigned long)sliderValue];
    
    NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
    //[fitNourishGlobals setObject:smritiTime[sliderValue] forKey:keyValue];
    [fitNourishGlobals setObject:smritiTime[sliderValue] forKey:@"workoutTimeText"];
    [fitNourishGlobals setObject:smritiCalories[sliderValue] forKey:@"caloriesBurnedText"];
    [fitNourishGlobals setObject:smritiDistance[sliderValue] forKey:@"distanceTraveledText"];
    [fitNourishGlobals setObject:smritiHeart[sliderValue] forKey:@"heartRateText"];
        
        self.workoutTimeText.text = [NSString stringWithFormat:@""];
        self.distanceTraveledText.text = [NSString stringWithFormat:@""];
        self.caloriesBurnedText.text = [NSString stringWithFormat:@""];
        self.heartRateText.text = [NSString stringWithFormat:@""];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
