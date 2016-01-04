//
//  VideosTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VideosTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Videos()
        XCTAssertEqual(quora.scheme, "videos:")
        XCTAssertEqual(quora.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Videos.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
