//
//  PlayingCard.m
//  CardGame
//
//  Created by Taqtile on 03/09/15.
//  Copyright (c) 2015 Taqtile. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"Q", @"J", @"K"];
}

+ (NSUInteger)maxRank {
    return [[self rankStrings] count]-1;
}

- (void)setRank: (NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

@end
