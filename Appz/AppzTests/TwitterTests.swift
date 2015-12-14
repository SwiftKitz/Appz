//
//  TwitterTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class TwitterTests: XCTestCase {

    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let twitter = Applications.Twitter()
        XCTAssertEqual(twitter.scheme, "twitter:")
        XCTAssertEqual(twitter.fallbackURL, "https://twitter.com/")
    }
    
    func testOpenUserHandle() {
        
        let handle = "mazyod"
        let action = Applications.Twitter.Action.UserHandle(handle)

        XCTAssertEqual(action.paths.app.pathComponents, ["user"])
        XCTAssertEqual(action.paths.app.queryParameters, ["screen_name": handle])
        XCTAssertEqual(action.paths.web.pathComponents, [handle])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testOpenStatus() {
        
        let statusId = "663797797234323456"
        let action = Applications.Twitter.Action.Status(id: statusId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["status"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id": statusId])
        XCTAssertEqual(action.paths.web.pathComponents, ["statuses", statusId])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
