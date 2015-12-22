//
//  YoutubeTests.swift
//  Appz
//
//  Created by Hamad AlGhanim on 12/22/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class YoutubeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let youtube = Applications.Youtube()
        XCTAssertEqual(youtube.scheme, "youtube:")
        XCTAssertEqual(youtube.fallbackURL, "https://youtube.com/")
    }
    
    func testOpen() {
        
        
        let action = Applications.Youtube.Action.Open()
        XCTAssertEqual(action.paths.app.pathComponents, [])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        
        
    }
    
    func testVideo() {
        
        
        let action = Applications.Youtube.Action.Video(id: "someId")
        XCTAssertEqual(action.paths.app.pathComponents, ["watch"])
        XCTAssertEqual(action.paths.app.queryParameters,["v":"someId"])
        
        XCTAssertEqual(action.paths.web.pathComponents, ["watch"])
        XCTAssertEqual(action.paths.web.queryParameters,["v":"someId"])
        
        
        
    }
}
