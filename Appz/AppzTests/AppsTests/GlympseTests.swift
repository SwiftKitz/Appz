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
        
        let Glympse = Applications.Glympse()
        XCTAssertEqual(Glympse.scheme, "glympse:")
        XCTAssertEqual(Glympse.fallbackURL, "https://glympse.com/get-glympse")
    }
    
    func testOpen() {
        
        let action = Applications.Glympse.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
