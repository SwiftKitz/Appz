//
//  FRILTests.swift
//  Appz
//
//  Created by Tomonobu Sato on 3/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FRILTests: XCTestCase {

    let appCaller = ApplicationCallerMock()

    func testConfiguration() {

        let fril = Applications.FRIL()
        XCTAssertEqual(fril.scheme, "fril:")
        XCTAssertEqual(fril.fallbackURL, "https://fril.jp/")
    }

    func testOpen() {

        let action = Applications.FRIL.Action.open

        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
