//
//  NotesTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class NotesTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let notes = Applications.Notes()
        XCTAssertEqual(notes.scheme, "mobilenotes:")
        XCTAssertEqual(notes.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Notes.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
