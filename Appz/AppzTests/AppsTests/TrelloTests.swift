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
        
        let trello = Applications.Trello()
        XCTAssertEqual(trello.scheme, "trello:")
        XCTAssertEqual(trello.fallbackURL, "https://trello.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Trello.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
