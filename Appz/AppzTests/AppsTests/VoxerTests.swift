//
//  VoxerTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VoxerTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let voxer = Applications.Voxer()
        XCTAssertEqual(voxer.scheme, "voxer:")
        XCTAssertEqual(voxer.fallbackURL, "http://www.voxer.com")
    }
    
    func testOpen() {
        
        let action = Applications.Voxer.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
