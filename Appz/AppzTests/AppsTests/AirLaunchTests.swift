//
//  AirLaunchTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class AirLaunchTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let airlaunch = Applications.AirLaunch()
        XCTAssertEqual(airlaunch.scheme, "airlaunch:")
        XCTAssertEqual(airlaunch.fallbackURL, "http://www.iosappdownload.org/download.php?boaID=846864")
    }
    
    func testOpen() {
        
        let action = Applications.AirLaunch.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
