//
//  YelpTests.swift
//  YelpTests
//
//  Created by Mariam AlJamea on 12/29/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class YelpTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let yelp = Applications.Yelp()
        XCTAssertEqual(yelp.scheme, "yelp4:")
        XCTAssertEqual(yelp.fallbackURL, "https://m.yelp.com/")
    }
    
    func testOpen() {
        
        let action = Applications.Yelp.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testSearch() {
        
        let query = "Coffee"
        let action = Applications.Yelp.Action.Search(query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["terms":query])
        XCTAssertEqual(action.paths.web.pathComponents, ["search"])
        XCTAssertEqual(action.paths.web.queryParameters, ["terms":query])
    }
    
    func testSearchLocation() {
        
        let query = "restaurants"
        let loc = "sf"
        let action = Applications.Yelp.Action.SearchLocation(query: query, loc: loc)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["terms":query,
            "location": loc,])
        XCTAssertEqual(action.paths.web.pathComponents, ["search"])
        XCTAssertEqual(action.paths.web.queryParameters, ["terms":query,
            "location": loc,])
    }
    
    func testSearchCategory() {
        
        let cat = "restaurants"
        let action = Applications.Yelp.Action.SearchCategory(cat: cat)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["category":cat])
        XCTAssertEqual(action.paths.web.pathComponents, ["search"])
        XCTAssertEqual(action.paths.web.queryParameters, ["category":cat])
    }
    
    func testSearchCatLoc() {
        
        let cat = "restaurants"
        let loc = "Hayes"
        let action = Applications.Yelp.Action.SearchCatLoc(loc: loc, cat: cat)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["category": cat,
            "location": loc,])
        XCTAssertEqual(action.paths.web.pathComponents, ["search"])
        XCTAssertEqual(action.paths.web.queryParameters, ["category": cat,
            "location": loc,])
    }
    
    func testBusiness() {
        
        let id = "the-sentinel-san-francisco"
        let action = Applications.Yelp.Action.Business(id: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "biz", id])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["biz", id])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
        
    }
}
