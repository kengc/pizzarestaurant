//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

typedef enum PizzaSize{
    small = 8,
    medium = 15,
    large = 20,
    extraLarge = 25
} PizzaSize;

//NS_ENUM(<#...#>)

typedef enum PizzaToppings{
    pepperoni,
    cheese,
    greenPeppers,
    feta,
    mushroom,
    onions,
    chicken
    
} PizzaToppings;

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

//@property NSArray<PizzaToppings> *toppings;

@property PizzaSize size;

//@property (nonatomic) enum pizzaSize; //must be public out of this class?

@property (nonatomic) NSArray *toppings;

//one that returns a value for its size (small, medium, or large)
@property (nonatomic) NSString * pizzaSize;

//another that gives its toppings (an array of strings, like “ham, pineapple, cheese”).
//- (void)addToppings:(NSMutableArray *)toppings;

//- (instancetype)initWithPizzaSize:(NSString *)size andToppings:(NSMutableArray *)toppings;
- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings;

//-(void) stateSize;
//-(void) stateToppings;
-(NSString *)parsePizzaSizeFromEnumWith:(enum PizzaSize)pizzaSize;

-(void)printPizzaDetails;

@end
