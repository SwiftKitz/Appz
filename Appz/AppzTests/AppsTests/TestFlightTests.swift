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
        
        let testFlight = Applications.TestFlight()
        XCTAssertEqual(testFlight.scheme, "itms-beta:")
        XCTAssertEqual(testFlight.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.TestFlight.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
