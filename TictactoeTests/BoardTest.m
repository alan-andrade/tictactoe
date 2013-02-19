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
    [board mark:0 with:@2];
    [board mark:1 with:@2];
    [board mark:2 with:@2];
    STAssertTrue([board isSolved], nil);
}

/*
-(void) testSolvableCombinations{
    [board markOccupied:0 with:@1];
    [board markOccupied:1 with:@1];
    [board markOccupied:2 with:@1];
    
    STAssertTrue([board isSolved], nil);
}*/

@end
