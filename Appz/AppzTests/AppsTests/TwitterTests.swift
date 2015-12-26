//
//  TwitterTests.swift
//  Appz
//
//  Created by Mazyad Alabduljaleel on 11/9/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TwitterTests: XCTestCase {

    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let twitter = Applications.Twitter()
        XCTAssertEqual(twitter.scheme, "twitter:")
        XCTAssertEqual(twitter.fallbackURL, "https://twitter.com/")
    }
    
    func testStatus() {
        
        let statusId = "663797797234323456"
        let action = Applications.Twitter.Action.Status(id: statusId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["status"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id": statusId])
        XCTAssertEqual(action.paths.web.pathComponents, ["statuses", statusId])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testUserHandle() {
        
        let handle = "mazyod"
        let action = Applications.Twitter.Action.UserHandle(handle)

        XCTAssertEqual(action.paths.app.pathComponents, ["user"])
        XCTAssertEqual(action.paths.app.queryParameters, ["screen_name": handle])
        XCTAssertEqual(action.paths.web.pathComponents, [handle])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testUserId() {

        let userId = "1233456"
        let action = Applications.Twitter.Action.UserId(userId)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["user"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id": userId])
        XCTAssertEqual(action.paths.web.pathComponents, ["intent", "user"])
        XCTAssertEqual(action.paths.web.queryParameters, ["user_id":userId])
    }
    
    func testUserList() {
        
        let handle = "mazyod"
        let slug = "test"
        let action = Applications.Twitter.Action.List(handle: handle, slug: slug)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["list"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "screen_name": handle,
            "slug": slug,
            ])
        XCTAssertEqual(action.paths.web.pathComponents, [handle, "lists", slug])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testPost() {
        
        let message = "Releasing Appz v1.0.0!"
        let repliedStatusId = ""
        let action = Applications.Twitter.Action.Post(message: message, repliedStatusId: nil)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["post"])
        XCTAssertEqual(action.paths.app.queryParameters, [
            "message": message,
            "in_reply_to_status_id": repliedStatusId,
        ])
        XCTAssertEqual(action.paths.web.pathComponents, ["intent", "tweet"])
        XCTAssertEqual(action.paths.web.queryParameters, [
            "text": message,
            "in_reply_to": repliedStatusId,
        ])
    }
    
    func testSearch() {
        
        let query = "#anon"
        let action = Applications.Twitter.Action.Search(query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["query":query])
        XCTAssertEqual(action.paths.web.pathComponents, ["search"])
        XCTAssertEqual(action.paths.web.queryParameters, ["q":query])
    }
    
    func testTimeline() {
        
        let action = Applications.Twitter.Action.Timeline
        
        XCTAssertEqual(action.paths.app.pathComponents, ["timeline"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testMentions() {
        
        let action = Applications.Twitter.Action.Mentions
        
        XCTAssertEqual(action.paths.app.pathComponents, ["mentions"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["mentions"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
    
    func testMessages() {
        
        let action = Applications.Twitter.Action.Messages
        
        XCTAssertEqual(action.paths.app.pathComponents, ["messages"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web.pathComponents, ["messages"])
        XCTAssertEqual(action.paths.web.queryParameters, [:])
    }
}
