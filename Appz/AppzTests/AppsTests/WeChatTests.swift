//
//  WeChatTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WeChatTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let wechat = Applications.WeChat()
        XCTAssertEqual(wechat.scheme, "wechat:")
        XCTAssertEqual(wechat.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.WeChat.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
