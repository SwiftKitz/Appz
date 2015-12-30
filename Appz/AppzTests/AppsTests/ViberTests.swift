//
//  ViberTests.swift
//  ViberTests
//
//  Created by Mariam AlJamea on 12/30/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ViberTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let viber = Applications.Viber()
        XCTAssertEqual(viber.scheme, "viber:")
        XCTAssertEqual(viber.fallbackURL, "http://www.viber.com/")
    }
    
    func testCallsTab() {
        
        let action = Applications.Viber.Action.CallsTab
        
        XCTAssertEqual(action.paths.app.pathComponents, ["calls"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testChatsTab() {
        
        let action = Applications.Viber.Action.ChatsTab
        
        XCTAssertEqual(action.paths.app.pathComponents, ["chats"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
}
