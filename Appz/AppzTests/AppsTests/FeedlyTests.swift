//
//  FeedlyTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FeedlyTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let feedly = Applications.Feedly()
        XCTAssertEqual(feedly.scheme, "feedly:")
        XCTAssertEqual(feedly.fallbackURL, "http://feedly.com/i/welcome")
    }
    
    func testOpen() {
        
        let action = Applications.Feedly.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
