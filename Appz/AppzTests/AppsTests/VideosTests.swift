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
        
        let videos = Applications.Videos()
        XCTAssertEqual(videos.scheme, "videos:")
        XCTAssertEqual(videos.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Videos.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
