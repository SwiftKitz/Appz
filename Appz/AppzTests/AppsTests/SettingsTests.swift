//
//  SettingsTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class SettingsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let appSettings = Applications.AppSettings()
        XCTAssertEqual(appSettings.scheme, "app-settings:")
        XCTAssertEqual(appSettings.fallbackURL, "")
    }
    
    func testOpenHome() {
        
        let action = Applications.AppSettings.Action.Open
        XCTAssertEqual(action.paths.app.pathComponents, [])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
