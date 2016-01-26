//
//  TedTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TedTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let ted = Applications.Ted()
        XCTAssertEqual(ted.scheme, "ted:")
        XCTAssertEqual(ted.fallbackURL, "https://www.ted.com")
    }
    
    func testOpen() {
        
        let action = Applications.Ted.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
