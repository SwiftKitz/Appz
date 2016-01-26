//
//  TumblrTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TumblrTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let tumblr = Applications.Tumblr()
        XCTAssertEqual(tumblr.scheme, "tumblr:")
        XCTAssertEqual(tumblr.fallbackURL, "https://www.tumblr.com")
    }
    
    func testOpen() {
        
        let action = Applications.Tumblr.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testDashboard() {
        
        let action = Applications.Tumblr.Action.Dashboard
        
        XCTAssertEqual(action.paths.app.pathComponents,
                                                    ["x-callback-url", "dashboard"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testExplore() {
        
        let action = Applications.Tumblr.Action.Explore
        
        XCTAssertEqual(action.paths.app.pathComponents,
                                                    ["x-callback-url", "explore"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testActivity() {
        
        let action = Applications.Tumblr.Action.Activity
        
        XCTAssertEqual(action.paths.app.pathComponents,
                                                    ["x-callback-url", "activity"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testBlog() {
        
        let action = Applications.Tumblr.Action.Blog
        
        XCTAssertEqual(action.paths.app.pathComponents,
                                                    ["x-callback-url", "blog"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testTag() {
        
        let tag = "moon"
        let action = Applications.Tumblr.Action.Tag(tag: tag)
        
        XCTAssertEqual(action.paths.app.pathComponents,
                                                    ["x-callback-url", "tag"])
        XCTAssertEqual(action.paths.app.queryParameters, ["tag":tag])
        XCTAssertEqual(action.paths.web, Path())
    }
}
