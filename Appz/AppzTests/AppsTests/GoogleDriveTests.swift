//
//  GoogleDriveTests.swift
//  GoogleDriveTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleDriveTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googleDrive = Applications.GoogleDrive()
        XCTAssertEqual(googleDrive.scheme, "googledrive:")
        XCTAssertEqual(googleDrive.fallbackURL, "https://www.google.com/drive/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleDrive.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
