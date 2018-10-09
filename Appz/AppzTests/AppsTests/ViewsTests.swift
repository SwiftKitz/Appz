//
//  ViewsTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 10/9/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class ViewsTests: XCTestCase {

    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let views = Applications.Views()
        XCTAssertEqual(views.scheme, "views:")
        XCTAssertEqual(views.fallbackURL, "http://www.saikambampati.com/views")
    }
    
    func testOpen() {
        
        let action = Applications.Views.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
