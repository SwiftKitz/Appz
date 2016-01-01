//
//  PaypalTests.swift
//  PaypalTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PaypalTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let paypal = Applications.Paypal()
        XCTAssertEqual(paypal.scheme, "paypal:")
        XCTAssertEqual(paypal.fallbackURL, "https://paypal.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Paypal.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
