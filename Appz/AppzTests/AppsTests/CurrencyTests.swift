//
//  CurrencyTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CurrencyTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Currency()
        XCTAssertEqual(quora.scheme, "Currency:")
        XCTAssertEqual(quora.fallbackURL, "http://www.xe.com/apps/iphone/")
    }
    
    func testOpen() {
        
        let action = Applications.Currency.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
