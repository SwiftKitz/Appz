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
        
        let action = Applications.Facebook.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testProfile() {
        
        let action = Applications.Facebook.Action.profile
        
        XCTAssertEqual(action.paths.app.pathComponents, ["profile"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testNotifications() {
        
        let action = Applications.Facebook.Action.notifications
        
        XCTAssertEqual(action.paths.app.pathComponents, ["notifications"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testFeed() {
        
        let action = Applications.Facebook.Action.feed
        
        XCTAssertEqual(action.paths.app.pathComponents, ["feed"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }

    func testPage() {
 
        let pageId = "1524770847774320"
        let action = Applications.Facebook.Action.page(pageId)
 
        XCTAssertEqual(action.paths.app.pathComponents, ["page"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id": pageId])
        XCTAssertEqual(action.paths.web.pathComponents, [pageId])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testEvent() {
        
        let eventId = "1016610545092462"
        let action = Applications.Facebook.Action.event(eventId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["event"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id": eventId])
        XCTAssertEqual(action.paths.web.pathComponents, [eventId])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
