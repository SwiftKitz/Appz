//
//  ItunesUTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ItunesUTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let itunesu = Applications.ItunesU()
        XCTAssertEqual(itunesu.scheme, "itms-itunesu:")
        XCTAssertEqual(itunesu.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.ItunesU.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
