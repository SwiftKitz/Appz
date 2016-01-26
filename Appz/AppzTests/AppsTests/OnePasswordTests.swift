//
//  OnePasswordTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class OnePasswordTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let onepassword = Applications.OnePassword()
        XCTAssertEqual(onepassword.scheme, "onepassword:")
        XCTAssertEqual(onepassword.fallbackURL, "https://agilebits.com/onepassword")
    }
    
    func testOpen() {
        
        let action = Applications.OnePassword.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
