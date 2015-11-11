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
        
        let scheme = "test:"
        let fallbackURL: String? = "http://google.com/"
    }
    
    private struct SampleAction: ExternalApplicationAction {
        
        var path = "search/something?param=5"
        var fallbackPath: String? = "find/otherThing?param=1"
    }

    
    private let appCallerMock = ApplicationCallerMock()
    
    
    override func setUp() {
        super.setUp()
        
        appCallerMock.clear()
    }
    
    func testQuery() {
        
        let sampleApp = SampleApp()
        appCallerMock.launch(sampleApp, action: SampleAction())
        
        let expectedURL = NSURL(string: "\(sampleApp.scheme)//")
        XCTAssertEqual(appCallerMock.queriedURLs[0], expectedURL)
    }
    
    func testOpenEmptyPath() {
        
        let sampleApp = SampleApp()
        var sampleAction = SampleAction()
        sampleAction.path = ""
        
        appCallerMock.canOpenURLs = true
        appCallerMock.launch(sampleApp, action: sampleAction)
        
        let expectedURL = NSURL(string: "\(sampleApp.scheme)//")
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
    
    func testOpenPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()

        appCallerMock.canOpenURLs = true
        appCallerMock.launch(sampleApp, action: sampleAction)
        
        let expectedURL = NSURL(string: "\(sampleApp.scheme)//" + sampleAction.path)
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
    
    func testOpenFallbackPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()
        
        appCallerMock.canOpenURLs = false
        appCallerMock.launch(sampleApp, action: sampleAction)
        
        let expectedURL = NSURL(string: sampleApp.fallbackURL! + sampleAction.fallbackPath!)
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
    
    func testOpenNilFallbackPath() {
        
        let sampleApp = SampleApp()
        var sampleAction = SampleAction()
        sampleAction.fallbackPath = nil
        
        appCallerMock.canOpenURLs = false
        appCallerMock.launch(sampleApp, action: sampleAction)

        // it should use path as the fallbackPath
        let expectedURL = NSURL(string: sampleApp.fallbackURL! + sampleAction.path)
        XCTAssertEqual(appCallerMock.openedURLs[0], expectedURL)
    }
}
