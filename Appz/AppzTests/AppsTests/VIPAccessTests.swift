//
//  VIPAccessTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VIPAccessTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let vipsymantec = Applications.VIPAccess()
        XCTAssertEqual(vipsymantec.scheme, "vipsymantec:")
        XCTAssertEqual(vipsymantec.fallbackURL, "https://m.vip.symantec.com/selectediphone.v")
    }
    
    func testOpen() {
        
        let action = Applications.VIPAccess.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
