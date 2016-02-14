//
//  BoxTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class BoxTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let box = Applications.Box()
        XCTAssertEqual(box.scheme, "box:")
        XCTAssertEqual(box.fallbackURL, "https://www.box.com/business/secure-enterprise-mobility/")
    }
    
    func testOpen() {
        
        let action = Applications.Box.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
