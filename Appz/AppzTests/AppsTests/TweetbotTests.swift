//
//  TweetbotTests.swift
//  Appz
//
//  Created by Hamad alghanim on 12/26/15.
//  Copyright © 2015 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class TweetbotTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let tweetbot = Applications.Tweetbot()
        XCTAssertEqual(tweetbot.scheme, "tweetbot:")
        XCTAssertEqual(tweetbot.fallbackURL, "http://tapbots.com/tweetbot/")
    }
    
    func testTimeline() {
        var action = Applications.Tweetbot.Action.Timeline(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","timeline"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Timeline(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","timeline"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    
    func testMentions() {
        var action = Applications.Tweetbot.Action.Mentions(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","mentions"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Mentions(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","mentions"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testDirectMessage() {
        var action = Applications.Tweetbot.Action.DirectMessages(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","direct_messages"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.DirectMessages(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","direct_messages"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testFavorites() {
        var action = Applications.Tweetbot.Action.Favorites(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","favorites"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Favorites(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","favorites"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testRetweets() {
        var action = Applications.Tweetbot.Action.Retweets(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","retweets"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Retweets(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","retweets"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testLists() {
        var action = Applications.Tweetbot.Action.Lists(screenname: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","lists"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Lists(screenname: "dreamer_soul")
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","lists"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testFavorite() {
        let id = "someId"
        var action = Applications.Tweetbot.Action.Favorite(screenname: nil, tweetId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["", "favorite", id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Favorite(screenname: "dreamer_soul", tweetId: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "favorite", id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testUnfavorite(){
        let id = "someId"
        var action = Applications.Tweetbot.Action.Unfavorite(screenname: nil, tweetId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["","unfavorite",id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        action = Applications.Tweetbot.Action.Unfavorite(screenname: "dreamer_soul", tweetId: id)
        
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "unfavorite", id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    
    func testRetweet(){
        let id = "someId"
        
        var action = Applications.Tweetbot.Action.Retweet(screenname: nil, tweetId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["","retweet",id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Retweet(screenname: "dreamer_soul", tweetId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "retweet", id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testFollow(){
        let id = "someId"
        
        var action = Applications.Tweetbot.Action.Follow(screenname: nil, followScreennameOrId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["","follow",id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Follow(screenname: "dreamer_soul", followScreennameOrId: id)
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "follow", id])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testList(){
        let id = "someId"
        
        var action = Applications.Tweetbot.Action.List(screenname: nil, listId: id, callbackurl: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","list",id])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url": ""])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.List(screenname: "dreamer_soul", listId: id, callbackurl: "someurl")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "list", id])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url" : "someurl"])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testPost(){
        
        var action = Applications.Tweetbot.Action.Post(screenname: nil, text: nil, callbackurl: nil, repliedStatusId: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","post"])
        XCTAssertEqual(action.paths.app.queryParameters,["text":"", "in_reply_to_status_id":"", "callback_url": ""])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Post(screenname: "dreamer_soul", text: "some Tweet Text", callbackurl: "www.google.com", repliedStatusId: "someId")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul", "post"])
        XCTAssertEqual(action.paths.app.queryParameters,["text":"some Tweet Text", "in_reply_to_status_id":"someId", "callback_url": "www.google.com"])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    
    func testSearch(){
        
        var action = Applications.Tweetbot.Action.Search(screenname: nil, query: nil, callbackurl: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","search"])
        XCTAssertEqual(action.paths.app.queryParameters,["query":"", "callback_url": ""])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Search(screenname: "dreamer_soul", query: "some Tweet Text", callbackurl: "www.google.com")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","search"])
        XCTAssertEqual(action.paths.app.queryParameters,["query":"some Tweet Text", "callback_url": "www.google.com"])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testUnfollow(){
        var action = Applications.Tweetbot.Action.Unfollow(screenname: nil, followScreennameOrId: "9gag")
        XCTAssertEqual(action.paths.app.pathComponents, ["","unfollow","9gag"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Unfollow(screenname: "dreamer_soul", followScreennameOrId: "9gag")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","unfollow", "9gag"])
        XCTAssertEqual(action.paths.app.queryParameters,[:])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testUserProfile(){
        var action = Applications.Tweetbot.Action.UserProfile(screenname: nil, profileScreennameOrId: "9gag", callbackurl: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","user_profile","9gag"])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url":""])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.UserProfile(screenname: "dreamer_soul", profileScreennameOrId: "9gag", callbackurl: "www.google.com")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","user_profile", "9gag"])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url":"www.google.com"])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
    }
    
    func testStatus(){
        var action = Applications.Tweetbot.Action.Status(screenname: nil, tweetId: "someId", callbackurl: nil)
        XCTAssertEqual(action.paths.app.pathComponents, ["","status","someId"])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url":""])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])
        
        action = Applications.Tweetbot.Action.Status(screenname: "dreamer_soul", tweetId: "someId", callbackurl: "www.google.com")
        XCTAssertEqual(action.paths.app.pathComponents, ["dreamer_soul","status", "someId"])
        XCTAssertEqual(action.paths.app.queryParameters,["callback_url":"www.google.com"])
        
        XCTAssertEqual(action.paths.web.pathComponents, [])
        XCTAssertEqual(action.paths.web.queryParameters,[:])

    }
}
