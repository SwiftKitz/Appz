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
        
        XCTAssertEqual(action.path, "itunes.apple.com/apps/id\(appId)")
        XCTAssertEqual(action.fallbackPath, nil)
    }
    
    func testOpenAccount() {
        
        let accountId = "395107918"
        let action = Applications.AppStore.Action.Account(id: accountId)
        
        XCTAssertEqual(action.path, "itunes.apple.com/developer/id\(accountId)")
        XCTAssertEqual(action.fallbackPath, nil)
    }
}
