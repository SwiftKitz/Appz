//
//  GoogleEarthTests.swift
//  GoogleEarthTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleEarthTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googleEarth = Applications.GoogleEarth()
        XCTAssertEqual(googleEarth.scheme, "kml:")
        XCTAssertEqual(googleEarth.fallbackURL, "https://www.google.com/earth/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleEarth.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
