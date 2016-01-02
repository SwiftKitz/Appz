//
//  GoogleMailTests.swift
//  GoogleMailTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleMailTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let gMail = Applications.GoogleMail()
        XCTAssertEqual(gMail.scheme, "googlegmail:")
        XCTAssertEqual(gMail.fallbackURL, "https://mail.google.com/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleMail.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
