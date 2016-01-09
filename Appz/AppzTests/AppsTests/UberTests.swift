//
//  UberTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class UberTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Uber()
        XCTAssertEqual(quora.scheme, "uber:")
        XCTAssertEqual(quora.fallbackURL, "https://www.uber.com")
    }
    
    func testOpen() {
        
        let action = Applications.Uber.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
