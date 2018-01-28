//
//  FaceTimeAudioTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 1/26/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FaceTimeAudioTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let faceTimeAudio = Applications.FaceTimeAudio()
        XCTAssertEqual(faceTimeAudio.scheme, "facetime-audio:")
        XCTAssertEqual(faceTimeAudio.fallbackURL, "")
    }
    
    func testCall() {
        
        let email = "user@example.com"
        let action = Applications.FaceTimeAudio.Action.call(email: email)
        
        XCTAssertEqual(action.paths.app.pathComponents, [email])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
