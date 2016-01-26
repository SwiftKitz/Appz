//
//  NetflixTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NetflixTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let nflx = Applications.Netflix()
        XCTAssertEqual(nflx.scheme, "nflx:")
        XCTAssertEqual(nflx.fallbackURL, "https://www.netflix.com")
    }
    
    func testOpen() {
        
        let action = Applications.Netflix.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
