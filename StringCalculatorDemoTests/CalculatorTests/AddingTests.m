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

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAddingSingleDigit
{
    StringCalculator *calc = [[StringCalculator alloc] init];
    int answer = [calc add:@"0"];
    XCTAssertEqual(0, answer, @"Expected %d to equal %d", 0, answer);
}

@end
