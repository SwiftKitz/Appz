//
//  IMDbTests.swift
//  IMDbTests
//
//  Created by Mariam AlJamea on 12/27/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class IMDbTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let imdb = Applications.IMDb()
        XCTAssertEqual(imdb.scheme, "imdb:")
        XCTAssertEqual(imdb.fallbackURL, "http://www.imdb.com/")
    }
    
    func testOpen() {
        
        let action = Applications.IMDb.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testSearch() {
        
        let query = "baby day out"
        let action = Applications.IMDb.Action.search(query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "find"])
        XCTAssertEqual(action.paths.app.queryParameters, ["q":query])
        XCTAssertEqual(action.paths.web.pathComponents, ["find"])
        XCTAssertEqual(action.paths.web.queryParameters, ["q":query])
    }
    
    func testTitle() {
        
        let id = "tt0068646"
        let action = Applications.IMDb.Action.title(id: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "title", id])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["title", id])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testBoxoffice() {
        
        let action = Applications.IMDb.Action.boxoffice
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "boxoffice"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["boxoffice"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testShowtimes() {
        
        let action = Applications.IMDb.Action.showtimes
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "showtimes"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["showtimes"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testFeatureCS() {
        
        let action = Applications.IMDb.Action.featureCS
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "feature", "comingsoon"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["feature", "comingsoon"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testFeatureBP() {
        
        let action = Applications.IMDb.Action.featureBP
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "feature", "bestpicture"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["feature", "bestpicture"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testFeatureBT() {
        
        let action = Applications.IMDb.Action.featureBT
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "feature", "borntoday"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["feature", "borntoday"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testChartTop() {
        
        let action = Applications.IMDb.Action.chartTop
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "chart", "top"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["chart", "top"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testMoviemeter() {
        
        let action = Applications.IMDb.Action.moviemeter
        
        XCTAssertEqual(action.paths.app.pathComponents, ["", "chart", "moviemeter"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["chart", "moviemeter"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
}
