//
//  CareemTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/18/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CareemTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let careem = Applications.Careem()
        XCTAssertEqual(careem.scheme, "careem:")
        XCTAssertEqual(careem.fallbackURL, "https://www.careem.com/dubai/node")
    }
    
    func testOpen() {
        
        let action = Applications.Careem.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
