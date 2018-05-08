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
        XCTAssertEqual(iBooks.fallbackURL, "https://itunes.apple.com/us/app/ibooks/id364709193?mt=8")
    }
    
    func testOpen() {
        
        let action = Applications.Ibooks.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
