//
//  SubjectViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-18.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "SubjectViewController.h"
#import "SettingsViewController.h"

@interface SubjectViewController ()

@end

@implementation SubjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)changeBackground{
    if([SettingsViewController darkIsOn]){
        self.view.backgroundColor = [UIColor darkGrayColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

@end
