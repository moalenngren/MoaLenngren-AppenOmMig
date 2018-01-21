//
//  MyMusicViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-19.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "MyMusicViewController.h"
#import "SettingsViewController.h"

@interface MyMusicViewController ()

@end

@implementation MyMusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self changeBackground];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)changeBackground{
    if([SettingsViewController darkIsOn]){
        self.view.backgroundColor = [UIColor darkGrayColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

@end
