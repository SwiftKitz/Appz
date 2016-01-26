//
//  MarktplaatsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MarktplaatsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let marktplaats = Applications.Marktplaats()
        XCTAssertEqual(marktplaats.scheme, "marktplaats:")
        XCTAssertEqual(marktplaats.fallbackURL, "http://www.marktplaats.nl")
    }
    
    func testOpen() {
        
        let action = Applications.Marktplaats.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
