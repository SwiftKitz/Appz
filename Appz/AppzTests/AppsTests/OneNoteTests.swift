//
//  OneNoteTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class OneNoteTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let excel = Applications.OneNote()
        XCTAssertEqual(excel.scheme, "onenote:")
        XCTAssertEqual(excel.fallbackURL, "https://www.office.com/")
    }
    
    func testOpen() {
        
        let link = "https://onedrive.live.com/redir.aspx?cid=fa74248df401c361&page=edit&resid=FA74248DF401C361!140"
        let payload = MSPayload(url: link)
        
        let action = Applications.OneNote.Action.Open(payload:payload)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["ofe\(payload.buildURL())"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
