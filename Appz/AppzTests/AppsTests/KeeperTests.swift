//
//  KeeperTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class KeeperTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let keeper = Applications.Keeper()
        XCTAssertEqual(keeper.scheme, "keeper:")
        XCTAssertEqual(keeper.fallbackURL, "https://keepersecurity.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Keeper.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
