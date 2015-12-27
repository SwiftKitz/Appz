//
//  FacebookTests.swift
//  FacebookTests
//
//  Created by Mariam AlJamea on 12/25/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FacebookTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let facebook = Applications.Facebook()
        XCTAssertEqual(facebook.scheme, "fb:")
        XCTAssertEqual(facebook.fallbackURL, "https://www.facebook.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Facebook.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testProfile() {
        
        let action = Applications.Facebook.Action.Profile
        
        XCTAssertEqual(action.paths.app.pathComponents, ["profile"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testNotifications() {
        
        let action = Applications.Facebook.Action.Notifications
        
        XCTAssertEqual(action.paths.app.pathComponents, ["notifications"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testFeed() {
        
        let action = Applications.Facebook.Action.Feed
        
        XCTAssertEqual(action.paths.app.pathComponents, ["feed"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
