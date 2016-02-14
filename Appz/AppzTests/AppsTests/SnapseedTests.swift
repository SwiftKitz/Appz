//
//  SnapseedTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SnapseedTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let Snapseed = Applications.Snapseed()
        XCTAssertEqual(Snapseed.scheme, "googlesnapseed:")
        XCTAssertEqual(Snapseed.fallbackURL, "https://support.google.com/snapseed/#topic=6155507")
    }
    
    func testOpen() {
        
        let action = Applications.Snapseed.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
