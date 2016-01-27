//
//  GoogleDocsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleDocsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googledocs = Applications.GoogleDocs()
        XCTAssertEqual(googledocs.scheme, "googledocs:")
        XCTAssertEqual(googledocs.fallbackURL, "http://www.google.com/docs/about/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleDocs.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
