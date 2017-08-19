//
//  DamaKingTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/26/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DamaKingTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let damaking = Applications.DamaKing()
        XCTAssertEqual(damaking.scheme, "damaking:")
        XCTAssertEqual(damaking.fallbackURL, "http://level3.io")
    }
    
    func testOpen() {
        
        let action = Applications.DamaKing.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
