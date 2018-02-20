//
//  DuolingoTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 2/19/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DuolingoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let duolingo = Applications.Duolingo()
        XCTAssertEqual(duolingo.scheme, "duolingo:")
        XCTAssertEqual(duolingo.fallbackURL, "https://www.duolingo.com")
    }
    
    func testOpen() {
        
        let action = Applications.Duolingo.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
