//
//  CirclePayTests.swift
//  Appz
//
//  Created by briankracoff on 3/24/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class CirclePayTests: XCTestCase {

    let appCaller = ApplicationCallerMock()

    func testConfiguration() {

        let circlePay = Applications.CirclePay()
        XCTAssertEqual(circlePay.scheme, "circle:")
        XCTAssertEqual(circlePay.fallbackURL, "https://www.circle.com/")
    }

    func testOpen() {

        let action = Applications.CirclePay.Action.Open

        XCTAssertEqual(action.paths.app.pathComponents, [])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }

    func testRequest() {

        let action = Applications.CirclePay.Action.Request

        XCTAssertEqual(action.paths.app.pathComponents, ["request"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["request"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }

    func testSend() {

        let action = Applications.CirclePay.Action.Send

        XCTAssertEqual(action.paths.app.pathComponents, ["send"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["send"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
