//
//  TwitterrificTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TwitterrificTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let twitterrific = Applications.Twitterrific()
        XCTAssertEqual(twitterrific.scheme, "twitterrific:")
        XCTAssertEqual(twitterrific.fallbackURL, "http://twitterrific.com/ios")
    }
    
    func testOpen() {
        
        let action = Applications.Twitterrific.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testMentionsView() {
        
        let action = Applications.Twitterrific.Action.MentionsView
        
        XCTAssertEqual(action.paths.app.pathComponents, ["mentions"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testMessagesView() {
        
        let action = Applications.Twitterrific.Action.MessagesView
        
        XCTAssertEqual(action.paths.app.pathComponents, ["messages"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testFavoritesView() {
        
        let action = Applications.Twitterrific.Action.FavoritesView
        
        XCTAssertEqual(action.paths.app.pathComponents, ["favorites"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testSearch() {
        
        let query = "Hi"
        let action = Applications.Twitterrific.Action.Search(query: query)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["search"])
        XCTAssertEqual(action.paths.app.queryParameters, ["q":query])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testTweetID() {
        
        let id = "12345"
        let action = Applications.Twitterrific.Action.TweetID(id: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["tweet"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id":id])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testMessageID() {
        
        let id = "12345"
        let action = Applications.Twitterrific.Action.MessageID(id: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["message"])
        XCTAssertEqual(action.paths.app.queryParameters, ["id":id])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testPost() {
        
        let message = "Hi"
        let action = Applications.Twitterrific.Action.Post(message: message)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["post"])
        XCTAssertEqual(action.paths.app.queryParameters, ["message":message])
        XCTAssertEqual(action.paths.web, Path())
    }
    
    func testUserProfile() {
        
        let screenName = "Iconfactory"
        let action = Applications.Twitterrific.Action.UserProfile(screenName: screenName)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["profile"])
        XCTAssertEqual(action.paths.app.queryParameters, ["screen_name":screenName])
        XCTAssertEqual(action.paths.web, Path())
    }
}
