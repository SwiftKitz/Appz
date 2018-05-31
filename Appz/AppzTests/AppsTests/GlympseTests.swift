//
//  GlympseTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GlympseTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let glympse = Applications.Glympse()
        XCTAssertEqual(glympse.scheme, "glympse:")
        XCTAssertEqual(glympse.fallbackURL, "https://glympse.com/get-glympse")
    }
    
    func testOpen() {
        
        let action = Applications.Glympse.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
