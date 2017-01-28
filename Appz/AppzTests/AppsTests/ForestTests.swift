//
//  ForestTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ForestTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let forest = Applications.Forest()
        XCTAssertEqual(forest.scheme, "Forest:")
        XCTAssertEqual(forest.fallbackURL, "https://www.forestapp.cc/en/")
    }
    
    func testOpen() {
        
        let action = Applications.Forest.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
