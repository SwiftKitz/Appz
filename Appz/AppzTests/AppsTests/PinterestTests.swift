//
//  PinterestTests.swift
//  PinterestTests
//
//  Created by Mariam AlJamea on 12/26/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PinterestTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let pinterest = Applications.Pinterest()
        XCTAssertEqual(pinterest.scheme, "pinterest:")
        XCTAssertEqual(pinterest.fallbackURL, "https://www.pinterest.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Pinterest.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testUser() {
        
        let name = "mariamaljamea"
        let action = Applications.Pinterest.Action.User(name: name)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["user", name])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, [name])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testSearch() {
        
        let query = "sky"
        let action = Applications.Pinterest.Action.Search(query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["search", "pins"])
        XCTAssertEqual(action.paths.app.queryParameters, ["q":query])
        XCTAssertEqual(action.paths.web.pathComponents, ["search", "pins"])
        XCTAssertEqual(action.paths.web.queryParameters, ["q":query])
    }
}
