//
//  EpsonTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class EpsonTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let epson = Applications.Epson()
        XCTAssertEqual(epson.scheme, "com.epson.iPrint:")
        XCTAssertEqual(epson.fallbackURL, "https://www.epson.com/cgi-bin/Store/jsp/epson-connect/mobile-printing/iprint-app.do")
    }
    
    func testOpen() {
        
        let action = Applications.Epson.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
