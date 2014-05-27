//
//  FLViewController.m
//  FitnessLog
//
//  Created by spramanick on 3/7/14.
//  Copyright (c) 2014 spramanick. All rights reserved.
//

#import "FLViewController.h"

@interface FLViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *homeButton;

@end

@implementation FLViewController

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
    //self.tabBarItem = [self.tabBarController.tabBar.items objectAtIndex:0];
    //self.tabBarItem.selectedImage = [UIImage imageNamed:@"home.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
