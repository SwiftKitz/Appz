//
//  KikTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/21/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class KikTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let kik = Applications.Kik()
        XCTAssertEqual(kik.scheme, "kik:")
        XCTAssertEqual(kik.fallbackURL, "http://www.kik.com")
    }
    
    func testOpen() {
        
        let action = Applications.Kik.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
