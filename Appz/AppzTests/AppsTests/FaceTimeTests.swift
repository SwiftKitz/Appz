//
//  FaceTimeTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 1/18/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FaceTimeTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let faceTime = Applications.FaceTime()
        XCTAssertEqual(faceTime.scheme, "facetime:")
        XCTAssertEqual(faceTime.fallbackURL, "")
    }
    
    func testCall() {
        
        let email = "user@example.com"
        let action = Applications.FaceTime.Action.call(email: email)
        
        XCTAssertEqual(action.paths.app.pathComponents, [email])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
