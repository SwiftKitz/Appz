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
        
        let wordPress = Applications.WordPress()
        XCTAssertEqual(wordPress.scheme, "wordpress:")
        XCTAssertEqual(wordPress.fallbackURL, "https://apps.wordpress.org")
    }
    
    func testOpen() {
        
        let action = Applications.WordPress.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
