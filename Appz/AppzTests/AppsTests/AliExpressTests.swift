//
//  AliExpressTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AliExpressTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let aliexpress = Applications.AliExpress()
        XCTAssertEqual(aliexpress.scheme, "aliexpress:")
        XCTAssertEqual(aliexpress.fallbackURL, "http://www.aliexpress.com")
    }
    
    func testOpen() {
        
        let action = Applications.AliExpress.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
