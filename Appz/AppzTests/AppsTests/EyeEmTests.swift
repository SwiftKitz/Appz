//
//  EyeEmTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class EyeEmTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let eyeEm = Applications.EyeEm()
        XCTAssertEqual(eyeEm.scheme, "eyeem:")
        XCTAssertEqual(eyeEm.fallbackURL, "https://www.eyeem.com/community")
    }
    
    func testOpen() {
        
        let action = Applications.EyeEm.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
