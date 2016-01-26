//
//  WhydTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WhydTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let whyd = Applications.Whyd()
        XCTAssertEqual(whyd.scheme, "whyd:")
        XCTAssertEqual(whyd.fallbackURL, "https://whyd.com")
    }
    
    func testOpen() {
        
        let action = Applications.Whyd.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
