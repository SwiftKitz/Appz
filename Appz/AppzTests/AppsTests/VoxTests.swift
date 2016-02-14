//
//  VoxTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VoxTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let vox = Applications.Vox()
        XCTAssertEqual(vox.scheme, "com.coppertino.vox:")
        XCTAssertEqual(vox.fallbackURL, "http://coppertino.com/vox/iphone")
    }
    
    func testOpen() {
        
        let action = Applications.Vox.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
