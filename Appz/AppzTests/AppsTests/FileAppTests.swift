//
//  FileAppTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FileAppTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.FileApp()
        XCTAssertEqual(quora.scheme, "fileapp:")
        XCTAssertEqual(quora.fallbackURL, "http://fileapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.FileApp.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
