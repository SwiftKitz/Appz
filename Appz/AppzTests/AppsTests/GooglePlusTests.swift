//
//  GooglePlusTests.swift
//  GooglePlusTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GooglePlusTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googlePlus = Applications.GooglePlus()
        XCTAssertEqual(googlePlus.scheme, "gplus:")
        XCTAssertEqual(googlePlus.fallbackURL, "https://plus.google.com/")
    }
    
    func testOpen() {
        
        let action = Applications.GooglePlus.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
