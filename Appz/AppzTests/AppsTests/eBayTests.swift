//
//  EbayTests.swift
//  EbayTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class EbayTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let eBay = Applications.Ebay()
        XCTAssertEqual(eBay.scheme, "eBay:")
        XCTAssertEqual(eBay.fallbackURL, "http://www.ebay.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Ebay.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
