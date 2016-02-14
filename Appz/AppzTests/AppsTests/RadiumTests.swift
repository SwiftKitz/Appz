//
//  RadiumTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RadiumTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let radium = Applications.Radium()
        XCTAssertEqual(radium.scheme, "radium:")
        XCTAssertEqual(radium.fallbackURL, "http://catpigstudios.com")
    }
    
    func testOpen() {
        
        let action = Applications.Radium.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
