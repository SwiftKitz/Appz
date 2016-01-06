//
//  FitbitTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FitbitTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Fitbit()
        XCTAssertEqual(quora.scheme, "fitbit:")
        XCTAssertEqual(quora.fallbackURL, "https://www.fitbit.com/app")
    }
    
    func testOpen() {
        
        let action = Applications.Fitbit.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
