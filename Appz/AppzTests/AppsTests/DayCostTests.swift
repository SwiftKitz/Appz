//
//  DayCostTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DayCostTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let DayCost = Applications.DayCost()
        XCTAssertEqual(DayCost.scheme, "DayCost:")
        XCTAssertEqual(DayCost.fallbackURL, "https://www.facebook.com/iDaycost/")
    }
    
    func testOpen() {
        
        let action = Applications.DayCost.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
