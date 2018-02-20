//
//  PodcastsTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 2/20/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PodcastsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let podcasts = Applications.Podcasts()
        XCTAssertEqual(podcasts.scheme, "podcasts:")
        XCTAssertEqual(podcasts.fallbackURL, "https://itunes.apple.com/us/app/podcasts/id525463029?mt=8")
    }
    
    func testOpen() {
        
        let action = Applications.Podcasts.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
