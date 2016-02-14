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
        
        let EyeEm = Applications.EyeEm()
        XCTAssertEqual(EyeEm.scheme, "eyeem:")
        XCTAssertEqual(EyeEm.fallbackURL, "https://www.eyeem.com/community")
    }
    
    func testOpen() {
        
        let action = Applications.EyeEm.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
