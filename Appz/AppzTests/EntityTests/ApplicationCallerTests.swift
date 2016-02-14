//
//  ApplicationCallerTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


private struct MalformedApp: ExternalApplication {
    
    typealias ActionType = SampleAction
    
    let scheme = "m%lform"
    let fallbackURL = "m%lforma$well"
    let appStoreId = ""
}


class ApplicationCallerTests: XCTestCase {
    
    private let appCallerMock = ApplicationCallerMock()
    
    
    override func setUp() {
        super.setUp()
        
        appCallerMock.clear()
    }
    
    func testQuery() {
        
        let sampleApp = SampleApp()
        appCallerMock.open(sampleApp, action: SampleAction())
        
        let expectedURL = NSURL(string: sampleApp.scheme)
        XCTAssertEqual(appCallerMock.queriedURLs.first, expectedURL)
    }
    
    func testOpenEmptyPath() {
        
        let sampleApp = SampleApp()
        var sampleAction = SampleAction()
        sampleAction.paths.app = Path()
        
        appCallerMock.canOpenURLs = true
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = NSURL(string: sampleApp.scheme)
        XCTAssertEqual(appCallerMock.openedURLs.first, expectedURL)
    }
    
    func testOpenPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()

        appCallerMock.canOpenURLs = true
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = sampleAction.paths.app.appendToURL(sampleApp.scheme)
        XCTAssertEqual(appCallerMock.openedURLs.first, expectedURL)
    }
    
    func testPromptInstallForInstalledApps() {
        
        // It shouldn't prompt the install
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()
        
        appCallerMock.canOpenURLs = true
        appCallerMock.open(sampleApp, action: sampleAction, promptInstall: true)
        
        let expectedURL = sampleAction.paths.app.appendToURL(sampleApp.scheme)
        XCTAssertEqual(appCallerMock.openedURLs.first, expectedURL)
    }
    
    func testPromptInstallForUnavailableApps() {
        
        // It should prompt the install
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()
        
        let appStore = Applications.AppStore()
        let appStoreAction = Applications.AppStore.Action.App(id: sampleApp.appStoreId)
        
        appCallerMock.canOpenURLs = false
        appCallerMock.exceptionURLs = [NSURL(string: appStore.scheme)!]
        appCallerMock.open(sampleApp, action: sampleAction, promptInstall: true)
        
        let expectedURL = appStoreAction.paths.app.appendToURL(appStore.scheme)
        XCTAssertEqual(appCallerMock.openedURLs.first, expectedURL)
    }
    
    func testOpenFallbackPath() {
        
        let sampleApp = SampleApp()
        let sampleAction = SampleAction()
        
        appCallerMock.canOpenURLs = false
        appCallerMock.open(sampleApp, action: sampleAction)
        
        let expectedURL = sampleAction.paths.web.appendToURL(sampleApp.fallbackURL)
        XCTAssertEqual(appCallerMock.openedURLs.first, expectedURL)
    }
    
    func testOpenMalformedURL() {
        
        appCallerMock.canOpenURLs = true
        
        XCTAssertFalse(appCallerMock.canOpen(MalformedApp()))
        XCTAssertFalse(appCallerMock.open(MalformedApp(), action: SampleAction()))
    }
}
