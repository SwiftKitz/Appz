//
//  WorkflowTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 3/23/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WorkflowTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let workflow = Applications.Workflow()
        XCTAssertEqual(workflow.scheme, "workflow:")
        XCTAssertEqual(workflow.fallbackURL, "https://workflow.is")
    }
    
    func testOpen() {
        
        let action = Applications.Workflow.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
