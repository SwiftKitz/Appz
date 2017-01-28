//
//  WatchTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WatchTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let watch = Applications.Watch()
        XCTAssertEqual(watch.scheme, "itms-watch:")
        XCTAssertEqual(watch.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Watch.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}

