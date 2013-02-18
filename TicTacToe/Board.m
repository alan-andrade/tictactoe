//
//  GameBoard.m
//  TicTacToe
//
//  Created by Gallo on 17/02/13.
//  Copyright (c) 2013 PartyMan. All rights reserved.
//

#import "Board.h"

@implementation Board

-(id) init{
    self = [super init];
    
    self->matrix = [[NSMutableArray alloc]
                        initWithObjects:
                            @0, @0, @0,
                            @0, @0, @0,
                            @0, @0, @0, nil];
    return self;
}

// index is the position at the matrix.
// markId is the object that identifies the player.
-(BOOL) markOccupied:(int)index
                with:(id)markId{
    
    // Might be good to validate argument such that:
    // markId should be different from @0.
    // For now just return false...
    if ([markId isEqual:@0]) {
        return false;
    }
    
    [self->matrix replaceObjectAtIndex:index withObject:markId];
    return true;
}

-(int) size{
    return [self->matrix count];
}


@end
