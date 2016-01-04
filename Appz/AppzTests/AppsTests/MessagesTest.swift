//
//  MessagesTest.swift
//  Appz
//
//  Created by Suraj Shirvankar on 12/5/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class MessagesTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let messages = Applications.Messages()
        XCTAssertEqual(messages.scheme, "sms:")
        XCTAssertEqual(messages.fallbackURL, "")
    }
    
    func testSMS() {
        
        let phone = "12345"
        let action = Applications.Messages.Action.SMS(phone: phone)
        
        XCTAssertEqual(action.paths.app.pathComponents, [phone])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}