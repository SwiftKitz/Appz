//
//  HeapoTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class HeapoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let heap = Applications.Heapo()
        XCTAssertEqual(heap.scheme, "heap:")
        XCTAssertEqual(heap.fallbackURL, "http://heapo.marblzz.com")
    }
    
    func testOpen() {
        
        let action = Applications.Heapo.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
