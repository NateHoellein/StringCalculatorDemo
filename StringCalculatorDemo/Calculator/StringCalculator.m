//
//  StringCalculator.m
//  StringCalculatorDemo
//
//  Created by Nathan Hoellein on 4/5/14.
//  Copyright (c) 2014 RiDeCoAd. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

-(int)add:(NSString *)sequence {
    NSArray *items = [sequence componentsSeparatedByString:@","];
    int answer = 0;
    for (int i = 0; i < [items count]; i++) {
        answer += [[items objectAtIndex:i] intValue];
    }
    return answer;
}
@end
