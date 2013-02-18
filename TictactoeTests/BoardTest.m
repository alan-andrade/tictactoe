//
//  BoardTest.m
//  TicTacToe
//
//  Created by Gallo on 17/02/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "BoardTest.h"
#import "Board.h"

@implementation BoardTest

-(void) setUp{
    [super setUp];
    board = [[Board alloc] init];
    STAssertNotNil(board, @"The testable board doesnt exists! Create it buddy.");
}

-(void) testBoardSize{
    STAssertTrue([board.board count] == 9, nil);
}

@end
