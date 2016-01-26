//
//  RunKeeperTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RunKeeperTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let RunKeeper = Applications.RunKeeper()
        XCTAssertEqual(RunKeeper.scheme, "RunKeeper:")
        XCTAssertEqual(RunKeeper.fallbackURL, "https://runkeeper.com/index")
    }
    
    func testOpen() {
        
        let action = Applications.RunKeeper.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
