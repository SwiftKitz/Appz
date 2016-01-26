//
//  StitcherRadioTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class StitcherRadioTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let stitcher = Applications.StitcherRadio()
        XCTAssertEqual(stitcher.scheme, "stitcher:")
        XCTAssertEqual(stitcher.fallbackURL, "http://www.stitcher.com")
    }
    
    func testOpen() {
        
        let action = Applications.StitcherRadio.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
