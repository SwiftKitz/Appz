//
//  LineTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class LineTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let line = Applications.Line()
        XCTAssertEqual(line.scheme, "line:")
        XCTAssertEqual(line.fallbackURL, "http://line.me/")
    }
    
    func testOpen() {
        
        let action = Applications.Line.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}

