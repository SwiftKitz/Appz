//
//  PocketTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PocketTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let pocket = Applications.Pocket()
        XCTAssertEqual(pocket.scheme, "pocket:")
        XCTAssertEqual(pocket.fallbackURL, "https://getpocket.com/ios/?ep=1")
    }
    
    func testOpen() {
        
        let action = Applications.Pocket.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
