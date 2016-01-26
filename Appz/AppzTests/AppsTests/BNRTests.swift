//
//  BNRTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class BNRTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let bnr = Applications.BNR()
        XCTAssertEqual(bnr.scheme, "bnr:")
        XCTAssertEqual(bnr.fallbackURL, "http://www.bnr.nl")
    }
    
    func testOpen() {
        
        let action = Applications.BNR.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
