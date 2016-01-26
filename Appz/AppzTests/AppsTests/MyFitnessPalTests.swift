//
//  MyFitnessPalTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MyFitnessPalTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let mfp = Applications.MyFitnessPal()
        XCTAssertEqual(mfp.scheme, "mfp:")
        XCTAssertEqual(mfp.fallbackURL, "https://www.myfitnesspal.com")
    }
    
    func testOpen() {
        
        let action = Applications.MyFitnessPal.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
