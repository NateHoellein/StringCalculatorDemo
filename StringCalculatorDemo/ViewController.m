//
//  ViewController.m
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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

@implementation ViewController

-(id)initWithStringCalculator:(StringCalculator* ) calculator {
    
    if(self) {
        self = [super init];
    }
    _calculator = calculator;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)add:(id)sender {
    NSString *source = [_input text];
    int answer = [_calculator add:source];
    [_answer setText:[NSString stringWithFormat:@"%d",answer]];
}

- (IBAction)subtract:(id)sender {
}

- (IBAction)multiply:(id)sender {
}

- (IBAction)divide:(id)sender {
}
@end
