//
//  PicCollageTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class PicCollageTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let PicCollage = Applications.PicCollage()
        XCTAssertEqual(PicCollage.scheme, "mixiapp-piccollage:")
        XCTAssertEqual(PicCollage.fallbackURL, "http://pic-collage.com")
    }
    
    func testOpen() {
        
        let action = Applications.PicCollage.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
