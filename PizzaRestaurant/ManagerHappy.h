//
//  ManagerHappy.h
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"


@interface ManagerHappy : NSObject <KitchenDelegate>

@property (nonatomic) DeliveryService *deliveryService;

@end
