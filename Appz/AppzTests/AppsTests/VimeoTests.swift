//
//  VimeoTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class VimeoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let vimeo = Applications.Vimeo()
        XCTAssertEqual(vimeo.scheme, "vimeo:")
        XCTAssertEqual(vimeo.fallbackURL, "https://vimeo.com/everywhere")
    }
    
    func testOpen() {
        
        let action = Applications.Vimeo.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
