//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

-(void)deliverPizza:(Pizza *)pizza;

-(NSMutableArray *)pizzasDelivered;

@end
