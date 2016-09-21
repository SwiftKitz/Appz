//
//  NYTimesTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 9/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NYTimesTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let NYTimes = Applications.NYTimes()
        XCTAssertEqual(NYTimes.scheme, "nytimes:")
        XCTAssertEqual(NYTimes.fallbackURL, "http://www.nytimes.com/services/mobile/index.html")
    }
    
    func testOpen() {
        
        let action = Applications.NYTimes.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
