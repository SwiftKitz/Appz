//
//  AppStoreTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/10/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz


class AppStoreTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let appStore = Applications.AppStore()
        XCTAssertEqual(appStore.scheme, "itms-apps:")
        XCTAssertEqual(appStore.fallbackURL, "http:")
    }
    
    func testOpenApp() {
        
        let appId = "395107915"
        let action = Applications.AppStore.Action.App(id: appId)
     
        XCTAssertEqual(action.paths.app.pathComponents, ["itunes.apple.com", "app", "id\(appId)"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testOpenAccount() {
        
        let accountId = "395107918"
        let action = Applications.AppStore.Action.Account(id: accountId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["itunes.apple.com", "developer", "id\(accountId)"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testRateApp() {
        
        let appId = "327630330"
        let action = Applications.AppStore.Action.RateApp(id: appId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["itunes.apple.com", "WebObjects", "MZStore.woa", "wa", "viewContentsUserReviews"])
        XCTAssertEqual(action.paths.app.queryParameters, [
                                                    "type":"Purple+Software",
                                                      "id":appId,])
        XCTAssertEqual(action.paths.web, Path())
    }
}
