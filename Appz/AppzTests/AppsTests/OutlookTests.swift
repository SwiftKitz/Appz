//
//  OutlookTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/4/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class OutlookTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.Outlook()
        XCTAssertEqual(quora.scheme, "ms-outlook:")
        XCTAssertEqual(quora.fallbackURL, "http://www.outlook.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Outlook.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testCompose() {
        
        let to = "mrm259@gmail.com"
        let subject = "Hi"
        let action = Applications.Outlook.Action.Compose(to: to, subject: subject)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["compose"])
        XCTAssertEqual(action.paths.app.queryParameters, [
                                                            "to": to,
                                                       "subject": subject,
                                                                            ])
        XCTAssertEqual(action.paths.web, Path())

    }
}
