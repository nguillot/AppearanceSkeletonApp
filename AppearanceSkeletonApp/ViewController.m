//
//  ViewController.m
//  AppearanceSkeletonApp
//
//  Created by nguillot on 04/01/13.
//  Copyright (c) 2013 Ippon Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLbl;
@property (weak, nonatomic) IBOutlet UILabel *textLbl;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [ThemeManager customizeBackground:self.containerView];
    [ThemeManager customizeTitle:self.titleLbl];
    [ThemeManager customizeSubtitle:self.subtitleLbl];
    [ThemeManager customizeText:self.textLbl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
