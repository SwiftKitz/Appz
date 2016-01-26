//
//  UstreamTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class UstreamTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let ustream = Applications.Ustream()
        XCTAssertEqual(ustream.scheme, "ustream:")
        XCTAssertEqual(ustream.fallbackURL, "https://www.ustream.tv/platform/watch-everywhere")
    }
    
    func testOpen() {
        
        let action = Applications.Ustream.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
