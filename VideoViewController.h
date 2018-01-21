//
//  VideoViewController.h
//  Labb1
//
//  Created by ITHS on 2018-01-21.
//  Copyright © 2018 MoaLenngren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface VideoViewController : UIViewController
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end
