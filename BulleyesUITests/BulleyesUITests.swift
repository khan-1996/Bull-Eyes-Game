//
//  BulleyesUITests.swift
//  BulleyesUITests
//
//  Created by Khan on 02.08.23.
//

import XCTest
@testable import Bulleyes

final class BulleyesUITests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
        
    }

    override func tearDownWithError() throws {
        game = nil
     
    }


 
}
