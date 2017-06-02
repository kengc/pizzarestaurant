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
        
        Manager *managerMean = [[Manager alloc] init];
        ManagerHappy *managerHappy = [[ManagerHappy alloc] init];
        
        Kitchen *restaurantKitchen1 = [Kitchen new];
        Kitchen *restaurantKitchen2 = [Kitchen new];
        
        PizzaSize pizzaSize;
        
        restaurantKitchen1.delegate = managerMean;
        restaurantKitchen2.delegate = managerHappy;
        
        //NSMutableArray *words = [[NSMutableArray alloc] init];
        
        
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
            
            [pizza printPizzaDetails];
            
      //-void acceptorder(kitchen *estaurantKitchen)
            
        }

    }
    return 0;
}

