//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@implementation Manager 

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
//    This will be for a class of managers that hate anchovies so much, they refuse to make pizzas that have anchovies. So the implementation of shouldMakePizza should return NO if any of the toppings are anchovies. This manager does not upgrade orders, and doesn't do anything after the kitchen makes a pizza.
    
    for(NSString *topping in toppings){
        if([topping isEqualToString:@"anchovies"]){
            NSLog(@"ANCHOVIES!?!? No pizza for joo");
            return NO;
        }
    } 
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}



@end
