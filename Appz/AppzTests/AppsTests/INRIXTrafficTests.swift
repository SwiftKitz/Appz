//
//  INRIXTrafficTests.swift
//  INRIXTrafficTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class INRIXTrafficTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let INRIXTraffic = Applications.INRIXTraffic()
        XCTAssertEqual(INRIXTraffic.scheme, "inrixtraffic:")
        XCTAssertEqual(INRIXTraffic.fallbackURL, "http://inrix.com/inrix-traffic-app/")
    }
    
    func testOpen() {
        
        let action = Applications.INRIXTraffic.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
