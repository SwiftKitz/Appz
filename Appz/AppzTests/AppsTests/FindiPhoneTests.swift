//
//  FindiPhoneTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 5/30/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FindiPhoneTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let forest = Applications.FindiPhone()
        XCTAssertEqual(forest.scheme, "fmip1:")
        XCTAssertEqual(forest.fallbackURL, "https://itunes.apple.com/us/app/find-my-iphone/id376101648?mt=8")
    }
    
    func testOpen() {
        
        let action = Applications.FindiPhone.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
