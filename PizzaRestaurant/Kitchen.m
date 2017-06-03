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
    Pizza *pizza;
    PizzaSize largePizza = large;
    
    BOOL shouldMakePizza =  [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
    
    if(shouldMakePizza){
        
        BOOL shouldUpgradePizza = [self.delegate kitchenShouldUpgradeOrder:self];
        
        if(shouldUpgradePizza){
            pizza = [[Pizza alloc] initWithPizzaSize:largePizza andToppings:toppings];
            
            //so, you'll have to check in code to see if, whoever the delegate is, actually implements this method.
            //-(void)kitchenDidMakePizza:(Pizza *)pizza;
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        
            return pizza;
        } else {
            
            pizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
            
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
            
            return pizza;
        }
        
        
    }
    
    return pizza;
}

//-(Manager *)manager{ //getter
//    if(_manager == nil){
//        _manager = self.init; //default instead of string it would be a class
//    }
//    return _manager;
//}

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
