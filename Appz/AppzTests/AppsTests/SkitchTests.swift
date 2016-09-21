//
//  SkitchTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 9/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SkitchTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let skitch = Applications.Skitch()
        XCTAssertEqual(skitch.scheme, "skitch:")
        XCTAssertEqual(skitch.fallbackURL, "https://evernote.com/skitch/")
    }
    
    func testOpen() {
        
        let action = Applications.Skitch.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
