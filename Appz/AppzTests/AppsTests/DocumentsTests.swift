//
//  DocumentsTests.swift
//  DocumentsTests
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class DocumentsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let docs = Applications.Documents()
        XCTAssertEqual(docs.scheme, "rdocs:")
        XCTAssertEqual(docs.fallbackURL, "https://readdle.com/products/documents/")
    }
    
    func testOpen() {
        
        let action = Applications.Documents.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
