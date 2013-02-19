//
//  Game.m
//  TicTacToe
//
//  Created by Alan Andrade on 2/18/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "Game.h"
#import "Board.h"
#import "Player.h"

@implementation Game

- (id)init
{
    self = [super init];
    if (self) {
        _board = [[Board alloc] init];
        _playerA = [[Player alloc] init];
        _playerB = [[Player alloc] init];
    }
    return self;
}

-(void) move :(Player *)player :(id)position{
    NSLog(@"Player name is %@ ", player.name);
    NSLog(@"Position dude: %@", position);
    
}

@end
