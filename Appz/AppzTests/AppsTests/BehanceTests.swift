//
//  BehanceTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/17/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class BehanceTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let behance = Applications.Behance()
        XCTAssertEqual(behance.scheme, "behance:")
        XCTAssertEqual(behance.fallbackURL, "https://www.behance.net/")
    }
    
    func testOpen() {
        
        let action = Applications.Behance.Action.open
    
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testUserProfile() {
        
        let profile = "StudioAIO"
        let action = Applications.Behance.Action.userProfile(profile)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["profile", profile])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, [profile])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
