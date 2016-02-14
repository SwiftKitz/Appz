//
//  Songpop2Tests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class Songpop2Tests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let songpop = Applications.Songpop2()
        XCTAssertEqual(songpop.scheme, "songpop:")
        XCTAssertEqual(songpop.fallbackURL, "https://www.songpop2.com")
    }
    
    func testOpen() {
        
        let action = Applications.Songpop2.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
