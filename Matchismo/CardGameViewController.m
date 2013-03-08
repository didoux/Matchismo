//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Dan Idoux on 2/13/13.
//  Copyright (c) 2013 Dan Idoux. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDesk.h"
#import "PlayingCard.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@end

@implementation CardGameViewController

-(void) setCardButtons:(NSArray *) cardButtons {
    _cardButtons = cardButtons;
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}

-(Deck *) deck
{
    if(!_deck) _deck = [[PlayingCardDesk alloc] init];
    return _deck;
}

-(void) setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipCount++;
    
}


@end
