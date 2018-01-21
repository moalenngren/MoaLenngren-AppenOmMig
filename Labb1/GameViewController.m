//
//  GameViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-18.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "GameViewController.h"
#import "SettingsViewController.h"

@interface GameViewController ()
@property (weak, nonatomic) IBOutlet UISlider *guessSlide;
@property (weak, nonatomic) IBOutlet UILabel *guessLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *triesLabel;

@end

@implementation GameViewController
int guess;
int currNumber;
int tries;

- (void)viewDidLoad {
    [super viewDidLoad];
    currNumber = [self randomizeNumber];
    [self changeBackground];
}
- (IBAction)guessSlider:(id)sender {
    guess =  self.guessSlide.value;
    self.guessLabel.text = [NSString stringWithFormat:@"%i", guess];
}

- (int)randomizeNumber {
    int number = arc4random_uniform(100)+1;
    NSLog(@"%i",number);
    return number;
}

- (IBAction)guessButton:(id)sender {
    if(guess == currNumber){
        tries++;
        NSLog(@"%i",currNumber);
        self.resultLabel.text = [NSString stringWithFormat:@"Rätt gissat! Talet var %i", currNumber];
        self.triesLabel.text = [NSString stringWithFormat:@"Antal försök: %i", tries];
        //TODO: Disable guess button and start a new game
    } else if (guess > currNumber){
        tries++;
        self.resultLabel.text = @"Du gissade för högt, prova igen";
        self.triesLabel.text = [NSString stringWithFormat:@"Antal försök: %i", tries];
    } else {
        tries++;
        self.resultLabel.text = @"Du gissade för lågt, prova igen";
        self.triesLabel.text = [NSString stringWithFormat:@"Antal försök: %i", tries];
    }
}

- (IBAction)playAgain:(id)sender {
    tries = 0;
    self.triesLabel.text = @"Antal försök: 0";
    self.resultLabel.text = @"";
    currNumber = [self randomizeNumber];
    self.guessSlide.value = 50;
    self.guessLabel.text = [NSString stringWithFormat:@"%i", 50];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [self changeBackground];
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

