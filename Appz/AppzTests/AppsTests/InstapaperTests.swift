//
//  InstapaperTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class InstapaperTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let instapaper = Applications.Instapaper()
        XCTAssertEqual(instapaper.scheme, "instapaper:")
        XCTAssertEqual(instapaper.fallbackURL, "https://www.instapaper.com/iphone")
    }
    
    func testOpen() {
        
        let action = Applications.Instapaper.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
