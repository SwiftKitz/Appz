//
//  DiigoTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DiigoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let diigo = Applications.Diigo()
        XCTAssertEqual(diigo.scheme, "diigo:")
        XCTAssertEqual(diigo.fallbackURL, "https://www.diigo.com")
    }
    
    func testOpen() {
        
        let action = Applications.Diigo.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
