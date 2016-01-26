//
//  NunlTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NunlTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let nunl = Applications.Nunl()
        XCTAssertEqual(nunl.scheme, "nunl:")
        XCTAssertEqual(nunl.fallbackURL, "http://www.nu.nl")
    }
    
    func testOpen() {
        
        let action = Applications.Nunl.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
