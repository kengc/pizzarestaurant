//
//  InputHanler.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSMutableArray *)parseUserInput{
    char inputChars[255];
    
    //small ham pineapple cheese
    //man1 small 
    
//  Add code to the input checking that will allow the user to switch from one manager to the other, and to no manager at all. Try ordering some pizzas with each of those three options.
    
    
    NSLog(@"Please pick your pizza size and toppings: ");
    fgets(inputChars, 255, stdin);
    
    
    NSString *inputString = [[NSString alloc] initWithUTF8String:inputChars];
    
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSMutableArray *words = [[inputString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] mutableCopy];
    
    
    //NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    //NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    //NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return words;
}

+(NSString *)getManagerInput{
    char inputChars[255];
    
    //accept man1 and man2
    
    NSLog(@"which manager would you like (man1 or man2): ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return trimmed;
    
}

@end
