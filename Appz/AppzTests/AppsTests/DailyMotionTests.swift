//
//  DailyMotionTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DailyMotionTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let dailymotion = Applications.DailyMotion()
        XCTAssertEqual(dailymotion.scheme, "dailymotion:")
        XCTAssertEqual(dailymotion.fallbackURL, "http://www.dailymotion.com/")
    }
    
    func testOpen() {
        
        let action = Applications.DailyMotion.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
