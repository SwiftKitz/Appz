//
//  EchofonTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class EchofonTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Echofon()
        XCTAssertEqual(quora.scheme, "echofon:")
        XCTAssertEqual(quora.fallbackURL, "http://www.echofon.com")
    }
    
    func testOpen() {
        
        let action = Applications.Echofon.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
