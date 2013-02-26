//
//  PlayingCardDesk.m
//  Matchismo
//
//  Created by Dan Idoux on 2/20/13.
//  Copyright (c) 2013 Dan Idoux. All rights reserved.
//

#import "PlayingCardDesk.h"
#import "PlayingCard.h"

@implementation PlayingCardDesk

-(id)init {
    self = [super init];
    
    if( self ) {
        for ( NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank ++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
    }
    return self;
}

@end
