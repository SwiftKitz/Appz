//
//  AudibleTests.swift
//  AudibleTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AudibleTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let audible = Applications.Audible()
        XCTAssertEqual(audible.scheme, "Audible:")
        XCTAssertEqual(audible.fallbackURL, "http://www.audible.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Audible.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
