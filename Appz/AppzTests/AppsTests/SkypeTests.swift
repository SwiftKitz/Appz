//
//  SkypeTests.swift
//  SkypeTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SkypeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let skype = Applications.Skype()
        XCTAssertEqual(skype.scheme, "Skype:")
        XCTAssertEqual(skype.fallbackURL, "http://www.skype.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Skype.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
