//
//  RIDETests.swift
//  Appz
//
//  Created by Tomonobu Sato on 3/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class RIDETests: XCTestCase {

    let appCaller = ApplicationCallerMock()

    func testConfiguration() {

        let ride = Applications.RIDE()
        XCTAssertEqual(ride.scheme, "rideapp:")
        XCTAssertEqual(ride.fallbackURL, "https://ride.jp/")
    }

    func testOpen() {

        let action = Applications.Line.Action.Open

        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
