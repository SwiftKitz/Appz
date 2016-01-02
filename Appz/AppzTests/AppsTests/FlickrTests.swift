//
//  FlickrTests.swift
//  FlickrTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FlickrTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let flickr = Applications.Flickr()
        XCTAssertEqual(flickr.scheme, "Flickr:")
        XCTAssertEqual(flickr.fallbackURL, "https://www.flickr.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Flickr.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
