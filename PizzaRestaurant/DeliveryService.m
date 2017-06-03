//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService()
@property (nonatomic) NSMutableArray *pizzasDelivered;
@property (nonatomic) DeliveryCar *deliveryCar;
@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzasDelivered = [[NSMutableArray alloc] init];
    }
    return self;
}


-(NSMutableArray *)pizzasDelivered{
    return _pizzasDelivered;
}

-(void)deliverPizza:(Pizza *)pizza{
    
    DeliveryCar *car = [[DeliveryCar alloc] init];
    
    [car deliverPizza:pizza];

    [self.pizzasDelivered addObject:pizza];
    
}

@end
