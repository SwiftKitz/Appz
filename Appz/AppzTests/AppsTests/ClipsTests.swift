//
//  ClipsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ClipsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let clips = Applications.Clips()
        XCTAssertEqual(clips.scheme, "clips:")
        XCTAssertEqual(clips.fallbackURL, "http://www.cleanshavenapps.com/clips/#download")
    }
    
    func testOpen() {
        
        let action = Applications.Clips.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
