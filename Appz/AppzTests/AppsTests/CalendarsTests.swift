//
//  CalendarsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CalendarsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let calendars = Applications.Calendars()
        XCTAssertEqual(calendars.scheme, "calendarslite:")
        XCTAssertEqual(calendars.fallbackURL, "https://readdle.com/products/calendars5")
    }
    
    func testOpen() {
        
        let action = Applications.Calendars.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
