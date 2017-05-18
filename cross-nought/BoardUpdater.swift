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
        let token = noughtOrCross(board: board)
        updatedBoard[row][column] = token
        return updatedBoard
    }
    
    func noughtOrCross(board: [[String]]) -> String{
        var xCount: Int = 0
        var oCount: Int = 0
        var output : String

        for row in board {
            for token in row{
                if token == "X"{
                    xCount += 1
                }
                if token == "O"{
                    oCount += 1
                }
            }
        }
        
        if xCount > oCount{
            output = "O"
        } else {
            output = "X"
        }
        return output
    }
    
    
}
