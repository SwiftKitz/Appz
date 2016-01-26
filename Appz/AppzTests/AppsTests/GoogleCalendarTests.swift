//
//  GoogleCalendarTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleCalendarTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let calendar = Applications.GoogleCalendar()
        XCTAssertEqual(calendar.scheme, "com.google.calendar:")
        XCTAssertEqual(calendar.fallbackURL, "https://www.google.com/calendar/about/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleCalendar.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testCreateEvent() {
        
        let action = Applications.GoogleCalendar.Action.CreateEvent
        
        XCTAssertEqual(action.paths.app.pathComponents, [""])
        XCTAssertEqual(action.paths.app.queryParameters, ["action":"create",])
        XCTAssertEqual(action.paths.web, Path())
    }
}
