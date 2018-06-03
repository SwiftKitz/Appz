//
//  RoboFormTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RoboFormTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let roboForm = Applications.RoboForm()
        XCTAssertEqual(roboForm.scheme, "roboform:")
        XCTAssertEqual(roboForm.fallbackURL, "http://www.roboform.com/for-iphone-ipad-ios")
    }
    
    func testOpen() {
        
        let action = Applications.RoboForm.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
