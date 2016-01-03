//
//  RemindersAppTests.swift
//  RemindersAppTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RemindersAppTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let remindersApp = Applications.RemindersApp()
        XCTAssertEqual(remindersApp.scheme, "x-apple-reminder:")
        XCTAssertEqual(remindersApp.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.RemindersApp.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
