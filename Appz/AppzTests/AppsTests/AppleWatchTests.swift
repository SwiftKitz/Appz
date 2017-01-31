//
//  AppleWatchTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AppleWatchTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let watch = Applications.AppleWatch()
        XCTAssertEqual(watch.scheme, "itms-watch:")
        XCTAssertEqual(watch.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.AppleWatch.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}

