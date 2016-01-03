//
//  PhoneTests.swift
//  PhoneTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PhoneTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let phone = Applications.Phone()
        XCTAssertEqual(phone.scheme, "tel:")
        XCTAssertEqual(phone.fallbackURL, "")
    }
    
    func testOpen() {
        
        let number = "1-408-555-5555"
        let action = Applications.Phone.Action.Open(number:number)
        
        XCTAssertEqual(action.paths.app.pathComponents, [number])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
