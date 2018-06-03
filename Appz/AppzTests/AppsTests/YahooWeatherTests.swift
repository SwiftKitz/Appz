//
//  YahooWeatherTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class YahooWeatherTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let yahooWeather = Applications.YahooWeather()
        XCTAssertEqual(yahooWeather.scheme, "yweather:")
        XCTAssertEqual(yahooWeather.fallbackURL, "https://mobile.yahoo.com/weather/")
    }
    
    func testOpen() {
        
        let action = Applications.YahooWeather.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}
