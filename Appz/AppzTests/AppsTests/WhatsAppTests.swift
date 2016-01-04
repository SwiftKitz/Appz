//
//  WhatsAppTests.swift
//  WhatsAppTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WhatsAppTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let whatsapp = Applications.WhatsApp()
        XCTAssertEqual(whatsapp.scheme, "whatsapp:")
        XCTAssertEqual(whatsapp.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.WhatsApp.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testSend(){
        let action = Applications.WhatsApp.Action.Send(abid: "someId", text: "some Text")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["send"])
        XCTAssertEqual(action.paths.app.queryParameters, ["abid":"someId", "text":"some Text"])
        XCTAssertEqual(action.paths.web, Path())
    }
}
