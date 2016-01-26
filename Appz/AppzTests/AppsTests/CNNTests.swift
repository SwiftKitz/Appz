//
//  CNNTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CNNTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let cnn = Applications.CNN()
        XCTAssertEqual(cnn.scheme, "cnn:")
        XCTAssertEqual(cnn.fallbackURL, "http://edition.cnn.com/specials/mobile-apps")
    }
    
    func testOpen() {
        
        let action = Applications.CNN.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}