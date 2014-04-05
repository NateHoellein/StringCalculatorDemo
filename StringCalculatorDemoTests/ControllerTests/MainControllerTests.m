//
//  MainControllerTests.m
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//
#import "Kiwi.h"

SPEC_BEGIN(MainControllerTests)

describe(@"The MainController should", ^ {
  
    it(@"test adding two numbers", ^ {
        [[@(40 + 2) should] equal:@42];
    });
});

SPEC_END