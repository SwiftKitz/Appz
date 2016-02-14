//
//  VSCOTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VSCOTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let VSCO = Applications.VSCO()
        XCTAssertEqual(VSCO.scheme, "vsco:")
        XCTAssertEqual(VSCO.fallbackURL, "http://vsco.co/store/app")
    }
    
    func testOpen() {
        
        let action = Applications.VSCO.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
