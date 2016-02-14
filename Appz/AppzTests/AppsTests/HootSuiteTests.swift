//
//  HootSuiteTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/21/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class HootSuiteTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let hootsuite = Applications.HootSuite()
        XCTAssertEqual(hootsuite.scheme, "hootsuite:")
        XCTAssertEqual(hootsuite.fallbackURL, "https://hootsuite.com/products/mobile-apps/hootsuite-mobile-app")
    }
    
    func testOpen() {
        
        let action = Applications.HootSuite.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
