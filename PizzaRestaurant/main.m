//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "InputHandler.h"
#import "Pizza.h"

//void accepOrder(kichen *restaurantKitchen)
//cheerymanager *    //new
//deliverySErvice *   //new
//
//[happpyguy] setDelegate:happyguy];

//while(tru)

//main
//autoreleasepool
//Kitchen *restaurantKitchen = [Kitchen new]];
//acceptOrder(restaurantKitch);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        PizzaSize pizzaSize;
        
        NSMutableArray *words = [[NSMutableArray alloc] init];
        
        while (TRUE) {
            // Loop forever
            
            //NSString *input = [InputHandler parseUserInput];
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSMutableArray *words = [[inputString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] mutableCopy];
            
            NSString * size = words[0];
            
            [words removeObjectAtIndex:0];
            
            Pizza *pizza;
            
            if([size isEqualToString:@"small"]){
                pizzaSize = small;
                pizza = [restaurantKitchen makePizzaWithSize:pizzaSize toppings:words];
            } else if ([size isEqualToString:@"medium"]){
                pizzaSize = medium;
                pizza =[restaurantKitchen makePizzaWithSize:pizzaSize toppings:words];
            } else if ([size isEqualToString:@"large"]){
                pizzaSize = large;
                pizza =[restaurantKitchen makePizzaWithSize:pizzaSize toppings:words];
            }
            
            [pizza printPizzaDetails];
            
    
      //-void acceptorder(kitchen *estaurantKitchen)
            
            
            //NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

