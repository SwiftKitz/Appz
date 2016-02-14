//
//  NameSharkTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NameSharkTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let nameshark = Applications.NameShark()
        XCTAssertEqual(nameshark.scheme, "nameshark:")
        XCTAssertEqual(nameshark.fallbackURL, "http://www.namesharkapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.NameShark.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
