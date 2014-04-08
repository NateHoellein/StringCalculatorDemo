//
//  MainControllerTests.m
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//
#import "Kiwi.h"
#import "StringCalculator.h"
#import "ViewController.h"

@interface ViewController()
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

SPEC_BEGIN(MainControllerTests)

describe(@"The MainController should", ^ {
  
    it(@"get the answer for add", ^ {
        StringCalculator *calculator = [StringCalculator mock];
        ViewController *controller = [[ViewController alloc] initWithStringCalculator:calculator];
        
        UITextView *inputView = [UITextView nullMock];
        UITextView *answerView = [UITextView nullMock];
        
        [inputView stub:@selector(text) andReturn:@"1,2,3"];
        
        [[calculator should] receive:@selector(add:) andReturn:theValue(6) withArguments:@"1,2,3"];
        
        [answerView stub:@selector(text) andReturn:theValue(6)];
        
        [controller add:nil];
    });
});

SPEC_END