//
//  Flip­boardTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class Flip­boardTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Flip­board()
        XCTAssertEqual(quora.scheme, "Flipboard:")
        XCTAssertEqual(quora.fallbackURL, "https://flipboard.com")
    }
    
    func testOpen() {
        
        let action = Applications.Flip­board.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
