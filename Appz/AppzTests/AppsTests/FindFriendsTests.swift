//
//  FindFriendsTests.swift
//  FindFriendsTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FindFriendsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let friend = Applications.FindFriends()
        XCTAssertEqual(friend.scheme, "FindMyFriends:")
        XCTAssertEqual(friend.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.FindFriends.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
