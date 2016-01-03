//
//  LinkedinTests.swift
//  LinkedinTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class LinkedinTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let linkedin = Applications.Linkedin()
        XCTAssertEqual(linkedin.scheme, "linkedin:")
        XCTAssertEqual(linkedin.fallbackURL, "http://www.linkedin.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Linkedin.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
