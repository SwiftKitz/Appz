//
//  TestFlightTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TestFlightTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let TestFlight = Applications.TestFlight()
        XCTAssertEqual(TestFlight.scheme, "itms-beta:")
        XCTAssertEqual(TestFlight.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.TestFlight.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
