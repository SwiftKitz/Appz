//
//  WordTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WordTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let excel = Applications.Word()
        XCTAssertEqual(excel.scheme, "ms-word:")
        XCTAssertEqual(excel.fallbackURL, "https://www.office.com/")
    }
    
    func testOpen() {
        
        let link = "https://d.docs.live.net/fa74248df401c361/fun.docx"
        let payload = MSPayload(url: link)
        
        let action = Applications.Word.Action.Open(payload:payload)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["ofe\(payload.buildURL())"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
