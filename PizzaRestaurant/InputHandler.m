//
//  InputHanler.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)parseUserInput{
    char inputChars[255];
    
    //small ham pineapple cheese
    
    NSLog(@"what pizza would you like: ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return trimmed;
}


@end
