//
//  SettingsViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-18.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "SettingsViewController.h"
#import "ViewController.h"

static BOOL darkThemeOn;

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *darkSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *lightSwitch;


@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self checkSwitchState];
}

-(void)checkSwitchState {
    if(darkThemeOn){
        self.view.backgroundColor = [UIColor darkGrayColor];
       [self.lightSwitch setOn:NO];
          [self.darkSwitch setOn:YES];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
        [self.lightSwitch setOn:YES];
         [self.darkSwitch setOn:NO];
    }
}

- (IBAction)clickDarkSwitch:(UISwitch *)sender {
    if(self.lightSwitch.isOn){
        darkThemeOn = YES;
    } else {
        darkThemeOn = NO;
    }
    [self checkSwitchState];
}

- (IBAction)clickLightSwitch:(UISwitch *)sender {
    if(self.darkSwitch.isOn){
        darkThemeOn = NO;
    } else {
        darkThemeOn = YES;
    }
    [self checkSwitchState];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

+(BOOL)darkIsOn{
    return darkThemeOn;
}

+(void)setDarkOn {
    darkThemeOn = YES;
}

@end
