//
//  AyahTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/24/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AyahTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let ayah = Applications.Ayah()
        XCTAssertEqual(ayah.scheme, "ayah:")
        XCTAssertEqual(ayah.fallbackURL, "http://ayahapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.Ayah.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
