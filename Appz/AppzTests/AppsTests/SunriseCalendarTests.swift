//
//  SunriseCalendarTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SunriseCalendarTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let sunrise = Applications.SunriseCalendar()
        XCTAssertEqual(sunrise.scheme, "sunrise:")
        XCTAssertEqual(sunrise.fallbackURL, "https://calendar.sunrise.am")
    }
    
    func testOpen() {
        
        let action = Applications.SunriseCalendar.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
