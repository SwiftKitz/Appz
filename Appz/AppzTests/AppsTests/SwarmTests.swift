//
//  SwarmTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SwarmTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let swarm = Applications.Swarm()
        XCTAssertEqual(swarm.scheme, "swarm:")
        XCTAssertEqual(swarm.fallbackURL, "https://www.swarmapp.com")
    }
    
    func testOpen() {
        
        let action = Applications.Swarm.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
