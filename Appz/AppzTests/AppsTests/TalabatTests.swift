//
//  TalabatTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 3/6/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TalabatTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let talabat = Applications.Talabat()
        XCTAssertEqual(talabat.scheme, "talabat:")
        XCTAssertEqual(talabat.fallbackURL, "https://www.talabat.com")
    }
    
    func testOpen() {
        
        let action = Applications.Podcasts.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}

