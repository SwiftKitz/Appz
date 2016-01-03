//
//  MusicTests.swift
//  MusicTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MusicTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let music = Applications.Music()
        XCTAssertEqual(music.scheme, "music:")
        XCTAssertEqual(music.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Music.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
