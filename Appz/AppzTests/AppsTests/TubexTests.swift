//
//  TubexTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TubexTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let tubex = Applications.Tubex()
        XCTAssertEqual(tubex.scheme, "tubex:")
        XCTAssertEqual(tubex.fallbackURL, "https://www.facebook.com/Tubex-744986562245828/")
    }
    
    func testOpen() {
        
        let action = Applications.Tubex.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
