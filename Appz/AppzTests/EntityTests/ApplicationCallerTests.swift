//
//  ApplicationCallerTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class ApplicationCallerTests: XCTestCase {
    
    private struct SampleApp: ExternalApplication {
        
        typealias ActionType = SampleAction
        
        let scheme = "test:"
        let fallbackURL = "http://google.com/"
    }
    
    private struct SampleAction: ExternalApplicationAction {
        
        var paths = ActionPaths(
            app: Path(
                pathComponents: ["search", "something"],
                queryParameters: ["param": "5"]
            ),
            web: Path(
                pathComponents: ["find", "otherThing"],
                queryParameters: ["param": "1"]
            )
        )
    }

    
    private let appCallerMock = ApplicationCallerMock()
    
    
    override func setUp() {
        super.setUp()
        
        appCallerMock.clear()
    }
    
    func testQuery() {
        
        let sampleApp = SampleApp()
        appCallerMock.open(sampleApp, action: SampleAction())
        
        let expectedURL = NSURL(string: "\(sampleApp.scheme)//")
        XCTAssertEqual(appCallerMock.queriedURLs[0], expectedURL)
    }
    
    func testOpenEmptyPath() {
        
        let sampleApp = SampleApp()
        var sampleAction = SampleAction()
        sampleAction.paths.app = Path()
        
        appCallerMock.canOpenURLs = true
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = NSURL(string: "\(sampleApp.scheme)//")
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
    
    func testOpenPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()

        appCallerMock.canOpenURLs = true
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = sampleAction.paths.app.appendToURL("\(sampleApp.scheme)//")
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
    
    func testOpenFallbackPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()
        
        appCallerMock.canOpenURLs = false
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = sampleAction.paths.web.appendToURL(sampleApp.fallbackURL)
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
}
