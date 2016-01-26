//
//  CnetTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CnetTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let cnet = Applications.Cnet()
        XCTAssertEqual(cnet.scheme, "cnet:")
        XCTAssertEqual(cnet.fallbackURL, "http://www.cnet.com")
    }
    
    func testOpen() {
        
        let action = Applications.Cnet.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
