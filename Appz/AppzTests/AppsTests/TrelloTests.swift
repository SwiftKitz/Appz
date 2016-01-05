//
//  TrelloTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TrelloTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Trello()
        XCTAssertEqual(quora.scheme, "trello:")
        XCTAssertEqual(quora.fallbackURL, "https://trello.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Trello.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
