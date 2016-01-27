//
//  GoogleSlidesTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleSlidesTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googleslides = Applications.GoogleSlides()
        XCTAssertEqual(googleslides.scheme, "googleslides:")
        XCTAssertEqual(googleslides.fallbackURL, "http://www.google.com/slides/about/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleSlides.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
