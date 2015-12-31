//
//  ItranslateTests.swift
//  ItranslateTests
//
//  Created by Mariam AlJamea on 12/30/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ItranslateTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let itranslate = Applications.Itranslate()
        XCTAssertEqual(itranslate.scheme, "itranslate:")
        XCTAssertEqual(itranslate.fallbackURL, "http://itranslateapp.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Itranslate.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testTranslate() {
        
        let from = "en"
        let to   = "ar"
        let text = "Hi"
        let action = Applications.Itranslate.Action.Translate(from: from, to: to, text: text)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["translate"])
        XCTAssertEqual(action.paths.app.queryParameters, ["from": from,
                                                            "to": to,
                                                          "text": text])
        XCTAssertEqual(action.paths.web, Path())
    }
    
}
