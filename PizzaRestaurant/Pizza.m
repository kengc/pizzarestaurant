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

- (instancetype)initWithPizzaSize:(NSString *)size andToppings:(NSMutableArray *)toppings
{
    self = [super init];
    if (self) {
        _pizzaSize = size;
        _toppings = toppings;
    }
    return self;
}

@end
