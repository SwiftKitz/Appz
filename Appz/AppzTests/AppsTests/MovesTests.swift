//
//  MovesTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MovesTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let Moves = Applications.Moves()
        XCTAssertEqual(Moves.scheme, "moves:")
        XCTAssertEqual(Moves.fallbackURL, "https://www.moves-app.com")
    }
    
    func testOpen() {
        
        let action = Applications.Moves.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
