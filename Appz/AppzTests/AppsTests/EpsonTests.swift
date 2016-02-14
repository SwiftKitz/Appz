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
        
        let Epson = Applications.Epson()
        XCTAssertEqual(Epson.scheme, "com.epson.iPrint:")
        XCTAssertEqual(Epson.fallbackURL, "https://www.epson.com/cgi-bin/Store/jsp/epson-connect/mobile-printing/iprint-app.do")
    }
    
    func testOpen() {
        
        let action = Applications.Epson.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
