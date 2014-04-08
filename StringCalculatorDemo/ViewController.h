//
//  ViewController.h
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StringCalculator.h"

@interface ViewController : UIViewController
@property StringCalculator *calculator;
@property IBOutlet UILabel *mainLabel;
@property IBOutlet UITextField *input;
@property IBOutlet UILabel *answer;

-(id)initWithStringCalculator:(StringCalculator* )calculator;

- (IBAction)add:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;

@end
