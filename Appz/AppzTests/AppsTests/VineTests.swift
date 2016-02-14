//
//  VineTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VineTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let vine = Applications.Vine()
        XCTAssertEqual(vine.scheme, "vine:")
        XCTAssertEqual(vine.fallbackURL, "https://vine.co")
    }
    
    func testOpen() {
        
        let action = Applications.Vine.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testTimelinesPopular() {
        
        let action = Applications.Vine.Action.TimelinesPopular
        
        XCTAssertEqual(action.paths.app.pathComponents, ["timelines", "popular"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["popular-now"])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
}
