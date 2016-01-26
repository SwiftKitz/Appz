//
//  MarvisTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MarvisTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let marvis = Applications.Marvis()
        XCTAssertEqual(marvis.scheme, "marvis:")
        XCTAssertEqual(marvis.fallbackURL, "http://appaddy.wix.com/marvis")
    }
    
    func testOpen() {
        
        let action = Applications.Marvis.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
