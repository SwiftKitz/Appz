//
//  AppleMapsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AppleMapsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let maps = Applications.AppleMaps()
        XCTAssertEqual(maps.scheme, "maps:")
        XCTAssertEqual(maps.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.AppleMaps.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
