//
//  eBayTests.swift
//  eBayTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class eBayTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let eBay = Applications.eBay()
        XCTAssertEqual(eBay.scheme, "eBay:")
        XCTAssertEqual(eBay.fallbackURL, "http://www.ebay.com/")
    }
    
    func testOpen() {
        
        let action = Applications.eBay.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
