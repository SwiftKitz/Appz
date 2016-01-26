//
//  LastPassTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class LastPassTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let lastpass = Applications.LastPass()
        XCTAssertEqual(lastpass.scheme, "lastpass:")
        XCTAssertEqual(lastpass.fallbackURL, "https://lastpass.com")
    }
    
    func testOpen() {
        
        let action = Applications.LastPass.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
