//
//  GameTests.swift
//  cross-nought
//
//  Created by Nick Rupp on 18/05/2017.
//  Copyright © 2017 whatsrupp. All rights reserved.
//

import XCTest

@testable import cross_nought

class GameTests: XCTestCase {
    
    let game = Game()
    
    let blankBoard: [[String]] = [["","",""],["","",""],["","",""]]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
       
    }
    
    func initializesWithEmptyBoard(){
        XCTAssert(blankBoard[0]==game.board[0])
        XCTAssert(blankBoard[1]==game.board[1])
        XCTAssert(blankBoard[2]==game.board[2])
    }
    
    
    
}
