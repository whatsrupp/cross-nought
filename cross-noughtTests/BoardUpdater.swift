//
//  BoardUpdater.swift
//  cross-nought
//
//  Created by Nick Rupp on 18/05/2017.
//  Copyright © 2017 whatsrupp. All rights reserved.
//

import XCTest

@testable import cross_nought


class BoardUpdaterTests: XCTestCase {
    
    let blankBoard = [["","",""],["","",""],["","",""]]
    let board = BoardUpdater()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func assertBoardsAreEqual(board1: [[String]], board2: [[String]]){
        XCTAssert(board1[0]==board2[0])
        XCTAssert(board1[1]==board2[1])
        XCTAssert(board1[2]==board2[2])
    }
    
    func testFirstMoveIsACross(){
        let expectedBoard = [["X","",""],["","",""],["","",""]]
        let testBoard = board.updateBoard(row:0, column: 0, board: blankBoard)
        assertBoardsAreEqual(board1: expectedBoard, board2: testBoard )
    }
    
    func testSecondMoveIsANought(){
        let initialBoard = [["","X",""],["","",""],["","",""]]
        let testBoard = board.updateBoard(row:0, column: 2, board: initialBoard)
        let expectedBoard = [["","X","O"],["","",""],["","",""]]
        assertBoardsAreEqual(board1: testBoard, board2: expectedBoard )
    }
    
    func testCantOverrideAnExistingXOnXTurn(){
        let initialBoard = [["","",""],["","X","O"],["","",""]]
        let testBoard = board.updateBoard(row: 1, column: 1, board: initialBoard)
        let expectedBoard = [["","",""],["","X","O"],["","",""]]
        assertBoardsAreEqual(board1: testBoard, board2: expectedBoard )

    }
    
    func testCantOverrideAnExistingOOnXTurn(){
        let initialBoard = [["","",""],["","X","O"],["","",""]]
        let testBoard = board.updateBoard(row: 1, column: 2, board: initialBoard)
        let expectedBoard = [["","",""],["","X","O"],["","",""]]
        assertBoardsAreEqual(board1: testBoard, board2: expectedBoard )
        
    }

    func testCantOverrideAnExistingXOnOTurn(){
        let initialBoard = [["","",""],["X","X","O"],["","",""]]
        let testBoard = board.updateBoard(row: 1, column: 1, board: initialBoard)
        let expectedBoard = [["","",""],["X","X","O"],["","",""]]
        assertBoardsAreEqual(board1: testBoard, board2: expectedBoard )

    }
    func testCantOverrideAnExistingOOnOTurn(){
        let initialBoard = [["","",""],["X","X","O"],["","",""]]
        let testBoard = board.updateBoard(row: 1, column: 2, board: initialBoard)
        let expectedBoard = [["","",""],["X","X","O"],["","",""]]
        assertBoardsAreEqual(board1: testBoard, board2: expectedBoard )
        
    }

    
}
