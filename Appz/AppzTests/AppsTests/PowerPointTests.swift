//
//  PowerPointTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PowerPointTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let excel = Applications.PowerPoint()
        XCTAssertEqual(excel.scheme, "ms-powerpoint:")
        XCTAssertEqual(excel.fallbackURL, "https://www.office.com/")
    }
    
    func testOpen() {
        
        let link = "https://d.docs.live.net/fa74248df401c361/testy/test.pptx"
        let payload = MSPayload(url: link)
        
        let action = Applications.PowerPoint.Action.Open(payload:payload)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["ofe\(payload.buildURL())"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
