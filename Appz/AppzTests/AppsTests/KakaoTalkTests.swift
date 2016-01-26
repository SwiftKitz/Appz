//
//  KakaoTalkTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class KakaoTalkTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let kakaotalk = Applications.KakaoTalk()
        XCTAssertEqual(kakaotalk.scheme, "kakaotalk:")
        XCTAssertEqual(kakaotalk.fallbackURL, "http://www.kakao.com/talk")
    }
    
    func testOpen() {
        
        let action = Applications.KakaoTalk.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
