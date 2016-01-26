//
//  WazeTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WazeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let waze = Applications.Waze()
        XCTAssertEqual(waze.scheme, "waze:")
        XCTAssertEqual(waze.fallbackURL, "https://www.waze.com")
    }
    
    func testOpen() {
        
        let action = Applications.Waze.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
