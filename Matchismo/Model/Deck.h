//
//  Deck.h
//  Matchismo
//
//  Created by Dan Idoux on 2/19/13.
//  Copyright (c) 2013 Dan Idoux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h" 

@interface Deck : NSObject

-(void) addCard: (Card *)card atTop:(BOOL)atTop;

-(Card *) drawRandomCard;

@end
