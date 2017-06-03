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
#import "Manager.h"
#import "ManagerHappy.h"
#import "DeliveryService.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Manager *managerMean = [[Manager alloc] init];
        ManagerHappy *managerHappy = [[ManagerHappy alloc] init];
        
        Kitchen *restaurantKitchen1 = [Kitchen new];
        Kitchen *restaurantKitchen2 = [Kitchen new];
        
        DeliveryService *deliveryService = [[DeliveryService alloc] init];
        
        managerMean.deliveryService = deliveryService;  //depencey injection
        managerHappy.deliveryService = deliveryService;
        
        PizzaSize pizzaSize;
        
        restaurantKitchen1.delegate = managerMean;
        restaurantKitchen2.delegate = managerHappy;
        
        NSMutableArray *pizzasDelivered = [[NSMutableArray alloc] init];
        
        
        while (TRUE) {
            // Loop forever
            
            NSMutableArray *pizzaOrder = [InputHandler parseUserInput];
            NSString *manager = [InputHandler getManagerInput];
        
            
            NSString * size = pizzaOrder[0];
            
            [pizzaOrder removeObjectAtIndex:0];
            
            Pizza *pizza;
            
            if([manager isEqualToString:@"man1"]){
        
                if([size isEqualToString:@"small"]){
                    pizzaSize = small;
                    pizza = [restaurantKitchen1 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                } else if ([size isEqualToString:@"medium"]){
                    pizzaSize = medium;
                    pizza = [restaurantKitchen1 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                } else if ([size isEqualToString:@"large"]){
                    pizzaSize = large;
                    pizza = [restaurantKitchen1 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                }
                
            } else if ([manager isEqualToString:@"man2"]) {
                if([size isEqualToString:@"small"]){
                    pizzaSize = small;
                    pizza = [restaurantKitchen2 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                } else if ([size isEqualToString:@"medium"]){
                    pizzaSize = medium;
                    pizza = [restaurantKitchen2 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                } else if ([size isEqualToString:@"large"]){
                    pizzaSize = large;
                    pizza = [restaurantKitchen2 makePizzaWithSize:pizzaSize toppings:pizzaOrder];
                }

            }
            
            //[pizza printPizzaDetails];
            pizzasDelivered = managerMean.deliveryService.pizzasDelivered;
            NSLog(@"\n");
            NSLog(@"All the pizzas delivered today BOSS! [%lu] total...", (unsigned long)pizzasDelivered.count);
            for(Pizza *pizza in pizzasDelivered){
                [pizza printPizzaDetails];
            }
        
        }

    }
    return 0;
}

