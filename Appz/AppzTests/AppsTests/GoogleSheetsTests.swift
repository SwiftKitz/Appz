//
//  GoogleSheetsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleSheetsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googlesheets = Applications.GoogleSheets()
        XCTAssertEqual(googlesheets.scheme, "googlesheets:")
        XCTAssertEqual(googlesheets.fallbackURL, "http://www.google.com/sheets/about/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleSheets.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
