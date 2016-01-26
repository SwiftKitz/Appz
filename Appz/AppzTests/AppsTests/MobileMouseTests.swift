//
//  MobileMouseTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MobileMouseTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let mobilemouse = Applications.MobileMouse()
        XCTAssertEqual(mobilemouse.scheme, "mobilemouse:")
        XCTAssertEqual(mobilemouse.fallbackURL, "http://www.mobilemouse.com")
    }
    
    func testOpen() {
        
        let action = Applications.MobileMouse.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
