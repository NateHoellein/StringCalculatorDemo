//
//  AddingTests.m
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StringCalculator.h"

@interface AddingTests : XCTestCase

@end

@implementation AddingTests

StringCalculator *calc;

- (void)setUp
{
    [super setUp];
    calc = [[StringCalculator alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testAddingSingleDigit
{
    int answer = [calc add:@"0"];
    XCTAssertEqual(0, answer, @"testAddingSingleDigit");
}

- (void)testAddingCommaDelimitedString
{
    int answer = [calc add:@"0,1"];
    XCTAssertEqual(1, answer, @"testAddingCommaDelimitedString");
}
@end
