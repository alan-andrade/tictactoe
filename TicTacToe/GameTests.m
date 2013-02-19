//
//  GameTests.m
//  TicTacToe
//
//  Created by Alan Andrade on 2/18/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "GameTests.h"
#import "Game.h"

@implementation GameTests

-(void) setUp{
    game = [[Game alloc] init];

    STAssertNotNil(game, nil);
}

-(void) testGameHasBoard{
    STAssertNotNil(game.board, nil);
}

-(void) testGameDynamics{
    [game move:game.playerA :@5];
}

@end
