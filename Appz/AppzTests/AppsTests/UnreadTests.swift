//
//  UnreadTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class UnreadTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let unread = Applications.Unread()
        XCTAssertEqual(unread.scheme, "unread:")
        XCTAssertEqual(unread.fallbackURL, "http://supertop.co/unread/")
    }
    
    func testOpen() {
        
        let action = Applications.Unread.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
