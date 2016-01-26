//
//  TangoTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TangoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let tango = Applications.Tango()
        XCTAssertEqual(tango.scheme, "tango:")
        XCTAssertEqual(tango.fallbackURL, "http://www.tango.me")
    }
    
    func testOpen() {
        
        let action = Applications.Tango.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
