//
//  WordPressTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WordPressTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let WordPress = Applications.WordPress()
        XCTAssertEqual(WordPress.scheme, "wordpress:")
        XCTAssertEqual(WordPress.fallbackURL, "https://apps.wordpress.org")
    }
    
    func testOpen() {
        
        let action = Applications.WordPress.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
