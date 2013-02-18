//
//  Board.m
//  TicTacToe
//
//  Created by Gallo on 17/02/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "Board.h"

@implementation Board

-(id) init{
    self = [super init];
    self.board = [[NSMutableArray alloc] initWithObjects:   @0, @0, @0,
                                                            @0, @0, @0,
                                                            @0, @0, @0, nil];
    
    return self;
}

-(BOOL) hasWinner{
    return true;
}

@end
