//
//  YammerTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class YammerTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let yammer = Applications.Yammer()
        XCTAssertEqual(yammer.scheme, "yammer:")
        XCTAssertEqual(yammer.fallbackURL, "https://products.office.com/en-us/yammer/yammer-mobile-app")
    }
    
    func testOpen() {
        
        let action = Applications.Yammer.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
