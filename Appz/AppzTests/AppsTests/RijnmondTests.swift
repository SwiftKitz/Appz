//
//  RijnmondTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RijnmondTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let rtv = Applications.Rijnmond()
        XCTAssertEqual(rtv.scheme, "rtvrijnmond:")
        XCTAssertEqual(rtv.fallbackURL, "http://www.rijnmond.nl")
    }
    
    func testOpen() {
        
        let action = Applications.Rijnmond.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
