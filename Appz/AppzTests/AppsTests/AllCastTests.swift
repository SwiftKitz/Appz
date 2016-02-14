//
//  AllCastTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AllCastTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let allCast = Applications.AllCast()
        XCTAssertEqual(allCast.scheme, "allCast:")
        XCTAssertEqual(allCast.fallbackURL, "http://www.allcast.io")
    }
    
    func testOpen() {
        
        let action = Applications.AllCast.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
