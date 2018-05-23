//
//  WalletTests.swift
//  Appz
//
//  Created by MARYAM ALJAME on 5/23/18.
//  Copyright © 2018 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class WalletTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let wallet = Applications.Wallet()
        XCTAssertEqual(wallet.scheme, "shoebox:")
        XCTAssertEqual(wallet.fallbackURL, "")
    }
    
    func testOpen() {
        
        let action = Applications.Podcasts.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
