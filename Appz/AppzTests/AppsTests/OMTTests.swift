//
//  OMTTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class OMTTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.OMT()
        XCTAssertEqual(quora.scheme, "onemorething:")
        XCTAssertEqual(quora.fallbackURL, "http://www.onemorething.nl")
    }
    
    func testOpen() {
        
        let action = Applications.OMT.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
