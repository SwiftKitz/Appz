//
//  DayOneTests.swift
//  DayOneTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DayOneTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let dayOne = Applications.DayOne()
        XCTAssertEqual(dayOne.scheme, "dayone:")
        XCTAssertEqual(dayOne.fallbackURL, "http://dayoneapp.com/")
    }
    
    func testOpen() {
        
        let action = Applications.DayOne.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
