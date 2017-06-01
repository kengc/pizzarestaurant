//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

@property (nonatomic) enum pizzaSizes;
@property (nonatomic) NSMutableArray *toppings;

//one that returns a value for its size (small, medium, or large)
@property (nonatomic) NSString * pizzaSize;

//another that gives its toppings (an array of strings, like “ham, pineapple, cheese”).
- (void)addToppings:(NSMutableArray *)toppings;

- (instancetype)initWithPizzaSize:(NSString *)size andToppings:(NSMutableArray *)toppings;

@end
