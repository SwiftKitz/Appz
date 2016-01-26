//
//  SSG2Tests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SSG2Tests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let SSG2 = Applications.SSG2()
        XCTAssertEqual(SSG2.scheme, "SSG2:")
        XCTAssertEqual(SSG2.fallbackURL, "http://www.noodlecake.com/games/super-stickman-golf-2/")
    }
    
    func testOpen() {
        
        let action = Applications.SSG2.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
