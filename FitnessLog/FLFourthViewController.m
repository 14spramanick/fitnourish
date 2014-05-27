//
//  FLFourthViewController.m
//  FitnessLog
//
//  Created by spramanick on 3/19/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLFourthViewController.h"

@interface FLFourthViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dayR;
@property (weak, nonatomic) IBOutlet UILabel *wtResult;
@property (weak, nonatomic) IBOutlet UILabel *cbResult;
@property (weak, nonatomic) IBOutlet UILabel *dtResult;
@property (weak, nonatomic) IBOutlet UILabel *hrResult;
@property (weak, nonatomic) IBOutlet UITabBarItem *viewResultsTab;
@property (weak, nonatomic) IBOutlet UILabel *responseWT;
@property (weak, nonatomic) IBOutlet UILabel *responseCB;
@property (weak, nonatomic) IBOutlet UILabel *responseDT;
@property (weak, nonatomic) IBOutlet UILabel *responseHR;

@end

@implementation FLFourthViewController

//- (IBAction)viewResultsClicked:(id)sender{
    //NSUserDefaults *wtR = [NSUserDefaults standardUserDefaults];
    //self.wtResult.text = [wtR stringForKey:@"wtText"];
    //NSUserDefaults *cbR = [NSUserDefaults standardUserDefaults];
    //self.cbResult.text = [cbR stringForKey:@"cbText"];
    //NSUserDefaults *dtR = [NSUserDefaults standardUserDefaults];
    //self.dtResult.text = [dtR stringForKey:@"dtText"];
    //NSUserDefaults *hrR = [NSUserDefaults standardUserDefaults];
    //self.hrResult.text = [hrR stringForKey:@"hrText"];
    
    //NSUserDefaults *wt = [NSUserDefaults standardUserDefaults];
    //NSUserDefaults *cb = [NSUserDefaults standardUserDefaults];
    //NSUserDefaults *dt = [NSUserDefaults standardUserDefaults];
    //NSUserDefaults *hr = [NSUserDefaults standardUserDefaults];
    //if ([self.hrResult.text >= hr)]) {
    
//}


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

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // You code here to update the view.
    NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
    self.wtResult.text = [fitNourishGlobals stringForKey:@"wtText"];
    self.cbResult.text = [fitNourishGlobals stringForKey:@"cbText"];
    self.dtResult.text = [fitNourishGlobals stringForKey:@"dtText"];
    self.hrResult.text = [fitNourishGlobals stringForKey:@"hrText"];
    
    if ([[fitNourishGlobals stringForKey:@"wtText"] floatValue] >= [[fitNourishGlobals stringForKey:@"workoutTimeText"] floatValue]) {
        self.responseWT.text = [NSString stringWithFormat:@"Congratulations! You have achieved your goal!"];
    }
    else self.responseWT.text = [NSString stringWithFormat:@"Sorry! You did not achieve your goal. :("];
    
    if ([[fitNourishGlobals stringForKey:@"cbText"] floatValue] >= [[fitNourishGlobals stringForKey:@"caloriesBurnedText"] floatValue]) {
        self.responseCB.text = [NSString stringWithFormat:@"Congratulations! You have achieved your goal!"];
    }
    else self.responseCB.text = [NSString stringWithFormat:@"Sorry! You did not achieve your goal. :("];
    
    if ([[fitNourishGlobals stringForKey:@"dtText"] floatValue] >= [[fitNourishGlobals stringForKey:@"distanceTraveledText"] floatValue]) {
        self.responseDT.text = [NSString stringWithFormat:@"Congratulations! You have achieved your goal!"];
    }
    else self.responseDT.text = [NSString stringWithFormat:@"Sorry! You did not achieve your goal. :("];
    
    if ([[fitNourishGlobals stringForKey:@"hrText"] floatValue] >= [[fitNourishGlobals stringForKey:@"heartRateText"] floatValue]) {
        self.responseHR.text = [NSString stringWithFormat:@"Congratulations! You have achieved your goal!"];
    }
    else self.responseHR.text = [NSString stringWithFormat:@"Sorry! You did not achieve your goal. :("];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
