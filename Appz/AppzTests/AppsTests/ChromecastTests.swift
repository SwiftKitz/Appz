//
//  ChromecastTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ChromecastTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let chromecast = Applications.Chromecast()
        XCTAssertEqual(chromecast.scheme, "chromecast:")
        XCTAssertEqual(chromecast.fallbackURL, "https://www.google.com/intl/en_us/chromecast/")
    }
    
    func testOpen() {
        
        let action = Applications.Chromecast.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
