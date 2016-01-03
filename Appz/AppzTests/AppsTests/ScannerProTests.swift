//
//  ScannerProTests.swift
//  ScannerProTests
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ScannerProTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let scannerPro = Applications.ScannerPro()
        XCTAssertEqual(scannerPro.scheme, "spprint:")
        XCTAssertEqual(scannerPro.fallbackURL, "https://readdle.com/products/scannerpro/")
    }
    
    func testOpen() {
        
        let action = Applications.ScannerPro.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
