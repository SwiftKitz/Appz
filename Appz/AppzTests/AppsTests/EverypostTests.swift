//
//  EverypostTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class EverypostTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let everypost = Applications.Everypost()
        XCTAssertEqual(everypost.scheme, "everypost:")
        XCTAssertEqual(everypost.fallbackURL, "http://everypost.me")
    }
    
    func testOpen() {
        
        let action = Applications.Everypost.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
