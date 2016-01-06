//
//  PeriscopeTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PeriscopeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Periscope()
        XCTAssertEqual(quora.scheme, "pscp:")
        XCTAssertEqual(quora.fallbackURL, "https://www.periscope.tv")
    }
    
    func testOpen() {
        
        let action = Applications.Periscope.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
