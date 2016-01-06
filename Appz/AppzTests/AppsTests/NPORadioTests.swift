//
//  NPORadioTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NPORadioTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.NPORadio()
        XCTAssertEqual(quora.scheme, "nporadio1:")
        XCTAssertEqual(quora.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.NPORadio.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
