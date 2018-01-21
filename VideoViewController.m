//
//  VideoViewController.m
//  Labb1
//
//  Created by ITHS on 2018-01-21.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import "VideoViewController.h"

@interface VideoViewController ()

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    NSString *videoUrl = @"https://www.youtube.com/watch?v=wVsPzzcUyPA";
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:videoUrl]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
