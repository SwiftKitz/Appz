//
//  FoursquareTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FoursquareTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let foursquare = Applications.Foursquare()
        XCTAssertEqual(foursquare.scheme, "foursquare:")
        XCTAssertEqual(foursquare.fallbackURL, "https://foursquare.com/download")
    }
    
    func testOpen() {
        
        let action = Applications.Foursquare.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
