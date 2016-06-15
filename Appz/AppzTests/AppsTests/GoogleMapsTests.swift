//
//  GoogleMapsTests.swift
//  GoogleMapsTests
//
//  Created by Mariam AlJamea on 12/24/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class GoogleMapsTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let googlemaps = Applications.GoogleMaps()
        XCTAssertEqual(googlemaps.scheme, "comgooglemaps:")
        XCTAssertEqual(googlemaps.fallbackURL, "https://maps.google.com/")
    }
    
    func testOpen() {
        
        let action = Applications.GoogleMaps.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testDisplayDirections() {
        
        let saddr = "Surra"
        let daddr = "infocenter"
        let directionsmode = "driving"
        let action = Applications.GoogleMaps.Action.DisplayDirections(
                                                                    saddr: saddr,
                                                                    daddr: daddr,
                                                                    directionsmode:
                                                                    directionsmode)
        
        XCTAssertEqual(action.paths.app.pathComponents, [""])
        XCTAssertEqual(action.paths.app.queryParameters,
            [
            "saddr": saddr,
            "daddr": daddr,
            "directionsmode": directionsmode,
            ])
        
        XCTAssertEqual(action.paths.web.pathComponents, [""])
        XCTAssertEqual(action.paths.web.queryParameters,
            [
            "saddr": saddr,
            "daddr": daddr,
            "directionsmode": directionsmode,
            ])
    }
    
    func testDisplayLocation() {
        
        let center = "40.765819,-73.975866"
        let zoom = "14"
        let views = "satellite"
        let action = Applications.GoogleMaps.Action.DisplayLocation(
            center: center,
              zoom: zoom,
             views: views)
        
        XCTAssertEqual(action.paths.app.pathComponents, [""])
        XCTAssertEqual(action.paths.app.queryParameters,
                       [
                        "center": center,
                          "zoom": zoom,
                         "views": views,
            ])
        
        XCTAssertEqual(action.paths.web.pathComponents, [""])
        XCTAssertEqual(action.paths.web.queryParameters,
                       [
                        "center": center,
                          "zoom": zoom,
                         "views": views,
            ])
    }
    
    func testSearch() {
        
        let q = "Pizza"
        let action = Applications.GoogleMaps.Action.Search(q: q)
        
        XCTAssertEqual(action.paths.app.pathComponents, [""])
        XCTAssertEqual(action.paths.app.queryParameters, ["q": q,])
        
        XCTAssertEqual(action.paths.web.pathComponents, [""])
        XCTAssertEqual(action.paths.web.queryParameters, ["q": q])
    }
}
