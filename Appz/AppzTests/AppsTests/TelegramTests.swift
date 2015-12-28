//
//  TelegramTests.swift
//  TelegramTests
//
//  Created by Mariam AlJamea on 12/28/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TelegramTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let telegram = Applications.Telegram()
        XCTAssertEqual(telegram.scheme, "tg:")
        XCTAssertEqual(telegram.fallbackURL, "https://web.telegram.org/")
    }
    
    func testMsg() {
        
        let message = "Hi"
        let phone = "12345" //You must prefix the number with +
        let action = Applications.Telegram.Action.Msg(message: message, phone: phone)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["msg"])
        XCTAssertEqual(action.paths.app.queryParameters,
                                                        ["text": message,
                                                           "to": phone,])
        XCTAssertEqual(action.paths.web, Path())
    }
}
