//
//  StravaTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class StravaTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let Strava = Applications.Strava()
        XCTAssertEqual(Strava.scheme, "strava:")
        XCTAssertEqual(Strava.fallbackURL, "http://www.strava.com/mobile")
    }
    
    func testOpen() {
        
        let action = Applications.Strava.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
