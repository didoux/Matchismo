//
//  PlayingCard.h
//  Matchismo
//
//  Created by Dan Idoux on 2/19/13.
//  Copyright (c) 2013 Dan Idoux. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSArray *) rankStrings;
+ (NSUInteger) maxRank;

@end
