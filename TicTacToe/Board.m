//
//  GameBoard.m
//  TicTacToe
//
//  Created by Gallo on 17/02/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "Board.h"

@implementation Board

- (id)init
{
  self = [super init];
  _matrix = [[NSMutableArray alloc] initWithObjects:
             @0, @0, @0,
             @0, @0, @0,
             @0, @0, @0, nil];
  return self;
}

-(BOOL) mark:(int)position with:(id)object{
  [_matrix replaceObjectAtIndex:position withObject:object];
  return true;
}

-(BOOL) isSolved{
  return true;
}

- (int) size{
  return [_matrix count];
}

@end
