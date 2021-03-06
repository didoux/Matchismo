//
//  Deck.m
//  Matchismo
//
//  Created by Dan Idoux on 2/19/13.
//  Copyright (c) 2013 Dan Idoux. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards; // array of Card objects
@end

@implementation Deck

-(NSMutableArray *) cards
{
    if (!_cards) _cards  = [[NSMutableArray alloc] init];
    return _cards;
}


-(void) addCard: (Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

-(Card *) drawRandomCard {
    Card *randomCard = nil;
    
    if( self.cards.count ) {
        NSUInteger index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end
