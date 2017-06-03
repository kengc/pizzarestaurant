//
//  ManagerHappy.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "ManagerHappy.h"

@implementation ManagerHappy

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    
    //call the delivery service
    [self.deliveryService deliverPizza:pizza];
    
    //NSLog(@"[Happy Manager] - MAMA MIA U SO BEAUTIFUL");
}

@end
