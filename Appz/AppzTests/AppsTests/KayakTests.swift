//
//  KayakTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class KayakTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let kayak = Applications.Kayak()
        XCTAssertEqual(kayak.scheme, "kayak:")
        XCTAssertEqual(kayak.fallbackURL, "https://www.kayak.ae/")
    }
    
    func testOpen() {
        
        let action = Applications.Kayak.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
