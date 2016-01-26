//
//  GalleryTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GalleryTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let photos = Applications.Gallery()
        XCTAssertEqual(photos.scheme, "photos-redirect:")
        XCTAssertEqual(photos.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Gallery.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
