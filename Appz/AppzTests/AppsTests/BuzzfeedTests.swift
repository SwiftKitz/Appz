//
//  BuzzfeedTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class BuzzfeedTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let buzzfeed = Applications.Buzzfeed()
        XCTAssertEqual(buzzfeed.scheme, "buzzfeed:")
        XCTAssertEqual(buzzfeed.fallbackURL, "http://www.buzzfeed.com")
    }
    
    func testOpen() {
        
        let action = Applications.Buzzfeed.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
