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
        
        let instagram = Applications.Instagram()
        XCTAssertEqual(instagram.scheme, "instagram:")
        XCTAssertEqual(instagram.fallbackURL, "https://instagram.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Instagram.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testCamera() {
        
        let action = Applications.Instagram.Action.Camera
        
        XCTAssertEqual(action.paths.app.pathComponents, ["camera"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testMedia() {
        
        let action = Applications.Instagram.Action.Media(id: "1")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["media"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id":"1"])
        XCTAssertEqual(action.paths.web.pathComponents, ["p", "1"])
    }
    
    func testUsername() {
        
        let action = Applications.Instagram.Action.Username(username: "test")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["user"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id":"test"])
        XCTAssertEqual(action.paths.web.pathComponents, ["test"])
    }
    
    func testLocation() {
        
        let action = Applications.Instagram.Action.Location(id: "111")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["location"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id":"111"])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testTag() {
        
        let action = Applications.Instagram.Action.Tag(name: "tag")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["tag"])
        XCTAssertEqual(action.paths.app.queryParameters, ["name":"tag"])
        XCTAssertEqual(action.paths.web.pathComponents, ["explore", "tags", "tag"])
    }
}
