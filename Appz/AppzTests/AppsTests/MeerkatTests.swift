//
//  MeerkatTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MeerkatTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let meerkat = Applications.Meerkat()
        XCTAssertEqual(meerkat.scheme, "meerkat:")
        XCTAssertEqual(meerkat.fallbackURL, "http://meerkatapp.co")
    }
    
    func testOpen() {
        
        let action = Applications.Meerkat.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
