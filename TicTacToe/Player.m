//
//  Player.m
//  TicTacToe
//
//  Created by PartyMan on 2/15/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "Player.h"

@interface Player ()

@property (strong, nonatomic) NSMutableArray *winCombinations;

@end

@implementation Player

- (id)init{
    self = [super init];
    
    if(self){
        
        NSArray *cleanBoard = [[NSArray alloc] initWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,nil];
        self.moves = [[NSMutableArray alloc] initWithArray:cleanBoard];
        
        
        //Init Win combinations
        NSArray *w1 = [[NSArray alloc] initWithObjects:@1,@1,@1,@0,@0,@0,@0,@0,@0,nil];
        NSArray *w2 = [[NSArray alloc] initWithObjects:@0,@0,@0,@1,@1,@1,@0,@0,@0,nil];
        NSArray *w3 = [[NSArray alloc] initWithObjects:@0,@0,@0,@0,@0,@0,@1,@1,@1,nil];
        NSArray *w4 = [[NSArray alloc] initWithObjects:@1,@0,@0,@1,@0,@0,@1,@0,@0,nil];
        NSArray *w5 = [[NSArray alloc] initWithObjects:@0,@1,@0,@0,@1,@0,@0,@1,@0,nil];
        NSArray *w6 = [[NSArray alloc] initWithObjects:@0,@0,@1,@0,@0,@1,@0,@0,@1,nil];
        NSArray *w7 = [[NSArray alloc] initWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        NSArray *w8 = [[NSArray alloc] initWithObjects:@0,@0,@1,@0,@1,@0,@1,@0,@0,nil];
        
        self.winCombinations = [[NSMutableArray alloc] initWithCapacity:8];
        [self.winCombinations addObject:w1];
        [self.winCombinations addObject:w2];
        [self.winCombinations addObject:w3];
        [self.winCombinations addObject:w4];
        [self.winCombinations addObject:w5];
        [self.winCombinations addObject:w6];
        [self.winCombinations addObject:w7];
        [self.winCombinations addObject:w8];
    }
    return self;
}

- (BOOL) isPlayerDefined{
    if(self.name != nil && self.character != nil && self.symbol != nil){
        return TRUE;
    }
    
    return FALSE;
}

- (void)playerDidMove:(int)boardPosition{
    [self.moves replaceObjectAtIndex:boardPosition withObject:@1];
}

- (void) clearMoves{
    NSArray *cleanBoard = [[NSArray alloc] initWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,nil];
    self.moves = [[NSMutableArray alloc] initWithArray:cleanBoard];
}

- (BOOL) didPlayerWin{
    
    for(int i=0; i<self.winCombinations.count; i++){
        if([self.moves isEqualToArray:self.winCombinations[i]])
            return YES;
    }
    return NO;  
}

@end
