//
//  IbooksTests.swift
//  IbooksTests
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class IbooksTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let iBooks = Applications.Ibooks()
        XCTAssertEqual(iBooks.scheme, "itms-Books:")
        XCTAssertEqual(iBooks.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Ibooks.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
