//
//  SlackTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/22/17.
//  Copyright © 2017 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class SlackTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let slack = Applications.Slack()
        XCTAssertEqual(slack.scheme, "slack:")
        XCTAssertEqual(slack.fallbackURL, "https://slack.com")
    }
    
    func testOpen() {
        
        let action = Applications.Facebook.Action.open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testChannel() {
        
        let team = "T0Q22G9C7"
        let id = "C0REGQG2T"
        let action = Applications.Slack.Action.channel(team: team, id: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["channel"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "team": team,
            "id": id,
            ])
        
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testDirectMessage() {
        
        let team = "T0Q22G9C7"
        let id = "USER_ID"
        let action = Applications.Slack.Action.directMessage(team: team, id: id)
   
        XCTAssertEqual(action.paths.app.pathComponents, ["user"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "team": team,
            "id": id,
            ])
        
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testOpenFile() {
        
        let team = "T0Q22G9C7"
        let id = "FILE_ID"
        let action = Applications.Slack.Action.openFile(team: team, fileID: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["file"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "team": team,
            "id": id,
            ])
        
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testSearch() {
        
        let team = "T0Q22G9C7"
        let query = "rails"
        let action = Applications.Slack.Action.search(team: team, query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["search"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "team": team,
            "query": query,
            ])
        
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
