//
//  BehanceTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/17/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class BehanceTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let behance = Applications.Behance()
        XCTAssertEqual(behance.scheme, "behance:")
        XCTAssertEqual(behance.fallbackURL, "https://www.behance.net/")
    }
    
    func testOpen() {
        
        let action = Applications.Behance.Action.open
    
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
