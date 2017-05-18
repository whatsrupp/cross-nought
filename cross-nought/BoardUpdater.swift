//
//  BoardUpdater.swift
//  cross-nought
//
//  Created by Nick Rupp on 18/05/2017.
//  Copyright © 2017 whatsrupp. All rights reserved.
//

import Foundation

class BoardUpdater {
    
    
    func updateBoard(row: Int, column: Int, board: [[String]]) -> [[String]]{
        var updatedBoard = board
        updatedBoard[row][column] = "X"
        return updatedBoard
    }
    
    
}
