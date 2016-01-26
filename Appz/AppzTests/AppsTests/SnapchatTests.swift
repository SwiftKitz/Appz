//
//  SnapchatTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SnapchatTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let snapchat = Applications.Snapchat()
        XCTAssertEqual(snapchat.scheme, "snapchat:")
        XCTAssertEqual(snapchat.fallbackURL, "https://www.snapchat.com")
    }
    
    func testOpen() {
        
        let action = Applications.Snapchat.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
