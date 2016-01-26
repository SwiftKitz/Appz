//
//  SonosTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SonosTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let sonos = Applications.Sonos()
        XCTAssertEqual(sonos.scheme, "sonos:")
        XCTAssertEqual(sonos.fallbackURL, "http://www.sonos.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Sonos.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
