//
//  SimplenoteTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SimplenoteTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let simplenote = Applications.Simplenote()
        XCTAssertEqual(simplenote.scheme, "simplenote:")
        XCTAssertEqual(simplenote.fallbackURL, "http://simplenote.com")
    }
    
    func testOpen() {
        
        let action = Applications.Simplenote.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
