//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
//Create an init method that will take a size and an array of toppings, and have that method set the internal values of the object when it is initialized.

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        
        _pizzaSize = [self parsePizzaSizeFromEnumWith:size];
        _toppings = toppings;
    }
    return self;
}

-(NSString *)parsePizzaSizeFromEnumWith:(enum PizzaSize)pizzaSize{
    
    NSString *size;
    
    switch (pizzaSize) {
        case small:
            return size = @"small";
            break;
        case medium:
            return size = @"medium";
            break;
        case large:
            return size = @"large";
            break;
        case extraLarge:
            return size = @"extraLarge";
            break;
        default:
            break;
    }
}

-(void)printPizzaDetails{
    //chekc for string method that takes and array and dumps into string
    //otherwise loop
    
    NSMutableString * result = [[NSMutableString alloc] init];
    for (NSObject * obj in self.toppings)
    {
        [result appendString:[obj description]];
        [result appendString:@" "];
    }
    NSLog(@"The pizza ordered is size: '%@' with toppings '%@'", self.pizzaSize, result);
}

@end
