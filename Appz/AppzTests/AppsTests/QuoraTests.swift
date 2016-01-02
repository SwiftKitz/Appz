//
//  QuoraTests.swift
//  QuoraTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class QuoraTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Quora()
        XCTAssertEqual(quora.scheme, "Quora:")
        XCTAssertEqual(quora.fallbackURL, "https://www.quora.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Quora.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
