//
//  InstagramTests.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/6/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class InstagramTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let instagram = AvailableApplications.Instagram()
        XCTAssertEqual(instagram.scheme, "instagram:")
        XCTAssertEqual(instagram.fallbackURL, "https://instagram.com/")
    }
    
    func testOpen() {
        let action = AvailableApplications.Instagram.Action.Open
        
        XCTAssertEqual(action.path, "app")
        XCTAssertEqual(action.fallbackPath, "")
        
    }
    
    func testCamera() {
        let action = AvailableApplications.Instagram.Action.Camera
        
        XCTAssertEqual(action.path, "camera")
        XCTAssertEqual(action.fallbackPath, nil)
    }
    
    func testMedia() {
        let action = AvailableApplications.Instagram.Action.Media(id: "1")
        
        XCTAssertEqual(action.path, "media?id=1")
        XCTAssertEqual(action.fallbackPath, "p/-1/")
        
    }
    
    func testUsername() {
        let action = AvailableApplications.Instagram.Action.Username(username: "test")
        XCTAssertEqual(action.path, "user?id=test")
        XCTAssertEqual(action.fallbackPath, "test")
        
    }
    
    func testLocation() {
        let action = AvailableApplications.Instagram.Action.Location(id: "111")
        XCTAssertEqual(action.path, "location?id=111")
        XCTAssertEqual(action.fallbackPath, nil)
        
    }
    
    func testTag() {
        let action = AvailableApplications.Instagram.Action.Tag(name: "tag")
        XCTAssertEqual(action.path, "tag?name=tag")
        XCTAssertEqual(action.fallbackPath, "explore/tags/tag/")
        
    }
}
