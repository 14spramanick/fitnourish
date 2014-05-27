//
//  FLThirdViewController.m
//  FitnessLog
//
//  Created by spramanick on 3/18/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLThirdViewController.h"

@interface FLThirdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dayR;
@property (weak, nonatomic) IBOutlet UITextField *wtText;
@property (weak, nonatomic) IBOutlet UITextField *cbText;
@property (weak, nonatomic) IBOutlet UITextField *dtText;
@property (weak, nonatomic) IBOutlet UITextField *hrText;
@property (weak, nonatomic) IBOutlet UIButton *saveResults;

@end

@implementation FLThirdViewController

- (IBAction)removeKeyboard:(UITextField *)wtText{
    [self.wtText resignFirstResponder];
}

- (IBAction)removeKeyboard2:(UITextField *)cbText{
    [self.cbText resignFirstResponder];
}

- (IBAction)removeKeyboard3:(UITextField *)dtText{
    [self.dtText resignFirstResponder];
}

- (IBAction)removeKeyboard4:(UITextField *)hrText{
    [self.hrText resignFirstResponder];
}

- (IBAction)saveResultsClicked:(id)sender
{
    NSMutableArray *smriti = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    if ([self.dayR.text isEqualToString:(@"Day 1")]) {
        //self.workoutTime1 = self.workoutTimeText.text;
        //self.caloriesBurned1 = self.caloriesBurnedText.text;
        //self.distanceTraveled1 = self.distanceTraveledText.text;
        //self.heartRate1 = self.heartRateText.text;
        
        smriti[0] = self.wtText.text;
        
        NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
        [fitNourishGlobals setObject:smriti[0] forKey:@"wtText"];
        [fitNourishGlobals setObject:self.cbText.text forKey:@"cbText"];
        [fitNourishGlobals setObject:self.dtText.text forKey:@"dtText"];
        [fitNourishGlobals setObject:self.hrText.text forKey:@"hrText"];
        NSLog(@"this is the array: %@",self.wtText.text);
        
        self.wtText.text = [NSString stringWithFormat:@""];
        self.dtText.text = [NSString stringWithFormat:@""];
        self.cbText.text = [NSString stringWithFormat:@""];
        self.hrText.text = [NSString stringWithFormat:@""];
    }
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
