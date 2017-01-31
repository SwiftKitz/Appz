//
//  PhotosTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PhotosTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let photos = Applications.Photos()
        XCTAssertEqual(photos.scheme, "photos-redirect:")
        XCTAssertEqual(photos.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Photos.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
