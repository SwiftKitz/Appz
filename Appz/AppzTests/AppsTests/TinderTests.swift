//
//  TinderTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/21/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TinderTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let tinder = Applications.Tinder()
        XCTAssertEqual(tinder.scheme, "tinder:")
        XCTAssertEqual(tinder.fallbackURL, "https://www.gotinder.com")
    }
    
    func testOpen() {
        
        let action = Applications.Tinder.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
