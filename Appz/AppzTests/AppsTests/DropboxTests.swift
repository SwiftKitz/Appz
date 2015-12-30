//
//  DropboxTests.swift
//  DropboxTests
//
//  Created by Mariam AlJamea on 12/30/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DropboxTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let dropbox = Applications.Dropbox()
        XCTAssertEqual(dropbox.scheme, "dbapi-2:")
        XCTAssertEqual(dropbox.fallbackURL, "https://dropbox.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Dropbox.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
