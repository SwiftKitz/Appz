//
//  GooglePhotosTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GooglePhotosTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googlephotos = Applications.GooglePhotos()
        XCTAssertEqual(googlephotos.scheme, "googlephotos:")
        XCTAssertEqual(googlephotos.fallbackURL, "https://www.google.com/photos/about/")
    }
    
    func testOpen() {
        
        let action = Applications.GooglePhotos.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
