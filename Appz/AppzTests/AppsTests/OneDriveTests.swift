//
//  OneDriveTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class OneDriveTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let onedrive = Applications.OneDrive()
        XCTAssertEqual(onedrive.scheme, "ms-onedrive:")
        XCTAssertEqual(onedrive.fallbackURL, "https://onedrive.live.com/")
    }
    
    func testOpen() {
        
        let action = Applications.OneDrive.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
