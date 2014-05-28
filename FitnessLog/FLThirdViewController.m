//
//  FLThirdViewController.m
//  FitnessLog
//
//  Created by spramanick on 3/18/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLThirdViewController.h"

@interface FLThirdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *day;
@property (weak, nonatomic) IBOutlet UITextField *wtText;
@property (weak, nonatomic) IBOutlet UITextField *cbText;
@property (weak, nonatomic) IBOutlet UITextField *dtText;
@property (weak, nonatomic) IBOutlet UITextField *hrText;
@property (weak, nonatomic) IBOutlet UIButton *saveResults;
@property (weak, nonatomic) IBOutlet UISlider *slider;

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
    NSMutableArray *smritiTimeR = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    
    NSMutableArray *smritiCaloriesR = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    
    NSMutableArray *smritiDistanceR = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    
    NSMutableArray *smritiHeartR = [NSMutableArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", nil];
    
    int sliderValue = roundf(_slider.value);
    
    smritiTimeR[sliderValue] = self.wtText.text;
    smritiCaloriesR[sliderValue] = self.cbText.text;
    smritiDistanceR[sliderValue] = self.dtText.text;
    smritiHeartR[sliderValue] = self.hrText.text;
    
    NSString *keyValueWTr = [NSString stringWithFormat: @"wtText%ld", (unsigned long)sliderValue];
    NSString *keyValueCBr = [NSString stringWithFormat: @"cbText%ld", (unsigned long)sliderValue];
    NSString *keyValueDTr = [NSString stringWithFormat: @"dtText%ld", (unsigned long)sliderValue];
    NSString *keyValueHRr = [NSString stringWithFormat: @"hrText%ld", (unsigned long)sliderValue];
    
    NSUserDefaults *fitNourishGlobals = [NSUserDefaults standardUserDefaults];
    [fitNourishGlobals setObject:smritiTimeR[sliderValue] forKey:keyValueWTr];
    [fitNourishGlobals setObject:smritiCaloriesR[sliderValue] forKey:keyValueCBr];
    [fitNourishGlobals setObject:smritiDistanceR[sliderValue] forKey:keyValueDTr];
    [fitNourishGlobals setObject:smritiHeartR[sliderValue] forKey:keyValueHRr];
    
    self.wtText.text = [NSString stringWithFormat:@""];
    self.dtText.text = [NSString stringWithFormat:@""];
    self.cbText.text = [NSString stringWithFormat:@""];
    self.hrText.text = [NSString stringWithFormat:@""];
    
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

- (IBAction)sliderMoved:(UISlider *)slider
{
    int sliderValue = roundf(slider.value);
    //NSLog(@"The value of the slider is now: %d", sliderValue);
    self.day.text = [NSString stringWithFormat:@"Day %d", sliderValue];
}


@end
