//
//  MopicoTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MopicoTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let mopico = Applications.Mopico()
        XCTAssertEqual(mopico.scheme, "mopico:")
        XCTAssertEqual(mopico.fallbackURL, "http://mo-pi-co.com")
    }
    
    func testOpen() {
        
        let action = Applications.Mopico.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
