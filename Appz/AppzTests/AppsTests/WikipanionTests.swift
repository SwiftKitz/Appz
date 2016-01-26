//
//  WikipanionTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WikipanionTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let wikipanion = Applications.Wikipanion()
        XCTAssertEqual(wikipanion.scheme, "wikipanion:")
        XCTAssertEqual(wikipanion.fallbackURL, "http://www.wikipanion.com/download.html?iphone")
    }
    
    func testOpen() {
        
        let action = Applications.Wikipanion.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
