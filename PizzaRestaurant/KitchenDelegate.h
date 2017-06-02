//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

//called kitchenDelegate instead of kitchenProtocol because it implements the delegate pattern 

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;


@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
