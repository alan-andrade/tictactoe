//
//  Game.h
//  TicTacToe
//
//  Created by Alan Andrade on 2/18/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Board.h"
#import "Player.h"

@interface Game : NSObject{
    Player *_currentPlayer;
}

@property(strong) Board *board;
@property(strong) Player *playerA;
@property(strong) Player *playerB;

-(void) move :(Player *)player :(id)position;

@end
