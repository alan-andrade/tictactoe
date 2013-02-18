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
    STAssertEquals([board size], 9, nil);
}

-(void) testCellsOcuppancy{
    BOOL ok        = [board markOccupied:0 with:@1];
    BOOL notOk     = [board markOccupied:1 with:@0];
    
    STAssertTrue(ok, nil);
    STAssertFalse(notOk, nil);
    STAssertThrows([board markOccupied:9 with:@1], nil);
}

@end
