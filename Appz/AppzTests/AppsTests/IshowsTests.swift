//
//  IshowsTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class IshowsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let ishows = Applications.Ishows()
        XCTAssertEqual(ishows.scheme, "ishows:")
        XCTAssertEqual(ishows.fallbackURL, "http://ishowsapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.Ishows.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
