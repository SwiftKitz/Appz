//
//  RemoteTests.swift
//  RemoteTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RemoteTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let remote = Applications.Remote()
        XCTAssertEqual(remote.scheme, "remote:")
        XCTAssertEqual(remote.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Remote.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
