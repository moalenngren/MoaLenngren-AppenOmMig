//
//  ViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-16.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameText;
@property (weak, nonatomic) IBOutlet UILabel *infoText;
@property UIColor *yellow;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SettingsViewController setDarkOn];
    self.yellow = [UIColor colorWithRed:1.00 green:0.82 blue:0.37 alpha:1.0];
}

- (void)viewWillAppear:(BOOL)animated {
    [self changeBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)changeBackground{
    if([SettingsViewController darkIsOn]){
        self.view.backgroundColor = [UIColor darkGrayColor];
        self.infoText.textColor = self.yellow;
        self.nameText.textColor = self.yellow;
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        self.infoText.textColor = [UIColor blackColor];
        self.nameText.textColor = [UIColor blackColor];
    }
}

@end
