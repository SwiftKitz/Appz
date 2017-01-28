//
//  IMovieTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class IMovieTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let iMovie = Applications.IMovie()
        XCTAssertEqual(iMovie.scheme, "iMovie:")
        XCTAssertEqual(iMovie.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.IMovie.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}

