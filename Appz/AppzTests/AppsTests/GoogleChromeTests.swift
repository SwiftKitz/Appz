//
//  GoogleChromeTests.swift
//  GoogleChromeTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleChromeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googleChrome = Applications.GoogleChrome()
        XCTAssertEqual(googleChrome.scheme, "googlechrome:")
        XCTAssertEqual(googleChrome.fallbackURL, "https://www.google.com/chrome/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleChrome.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
