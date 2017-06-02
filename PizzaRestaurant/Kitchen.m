//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    Pizza *pizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
    return pizza;
}

//(void)takeOrder(NSARray *)array
//parse
//[self setUpgrad:[[Kitch delegate kitchenShoudupgrade]]]
//-(PizzaSize)ParseForSize(NSArray *)order
// NSString *line = [order objectAtIndex:0]
//if ([line isequal: @small")
//  if(self.upgrade){
//    return medium
//}
//return small
//} else if ((lin isequal:@"meidum"

//-(NSARRay)parsefortoppings:(NSSAray *)order{
//NSArray *topping
//NSmutableArray *setupToppings = [[NSMutabe alloc
//NSUInteger i = 0
//NSUinteger siez = [order count]

//while(i < size){
//if (i != 0)
//[ setupToppings addObject:[order objectAtIndex:i]];
//}
//i++

@end
