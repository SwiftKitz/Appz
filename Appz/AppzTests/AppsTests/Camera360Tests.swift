//
//  Camera360Tests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class Camera360Tests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let Camera360 = Applications.Camera360()
        XCTAssertEqual(Camera360.scheme, "camera360:")
        XCTAssertEqual(Camera360.fallbackURL, "https://www.camera360.com/production/?production=camera360&platform=ios")
    }
    
    func testOpen() {
        
        let action = Applications.Camera360.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}