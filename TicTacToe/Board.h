//
//  Board.h
//  TicTacToe
//
//  Created by Gallo on 17/02/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject

@property NSMutableArray *board;

- (BOOL) hasWinner;

@end