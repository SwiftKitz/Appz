//
//  GoogleTranslateTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleTranslateTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googletranslate = Applications.GoogleTranslate()
        XCTAssertEqual(googletranslate.scheme, "googletranslate:")
        XCTAssertEqual(googletranslate.fallbackURL, "https://translate.google.com/about/intl/en_ALL/index.html")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleTranslate.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
