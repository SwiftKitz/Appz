//
//  Tweetbot.swift
//  Appz
//
//  Created by Hamad AlGhanim on 12/25/15.
//  Copyright © 2015 kitz. All rights reserved.
//
/*

taken from http://tapbots.net/tweetbot3/support/url-schemes/
tweetbot://<screenname>/timeline
tweetbot://<screenname>/mentions
tweetbot://<screenname>/retweets
tweetbot://<screenname>/direct_messages
tweetbot://<screenname>/lists
tweetbot://<screenname>/favorites
tweetbot://<screenname>/search
tweetbot://<screenname>/search?query=<text>
tweetbot://<screenname>/status/<tweet_id>
tweetbot://<screenname>/user_profile/<profile_screenname>
tweetbot://<screenname>/post
tweetbot://<screenname>/post?text=<text>
tweetbot://<screenname>/post?text=<text>&callback_url=<url>&in_reply_to_status_id=<tweet_id>
tweetbot://<screenname>/search?query=<text>&callback_url=<url>
tweetbot://<screenname>/status/<tweet_id>?callback_url=<url>
tweetbot://<screenname>/user_profile/<screenname|user_id>?callback_url=<url>
tweetbot://<screenname>/follow/<screenname|user_id>
tweetbot://<screenname>/unfollow/<screenname|user_id>
tweetbot://<screenname>/favorite/<tweet_id>
tweetbot://<screenname>/unfavorite/<tweet_id>
tweetbot://<screenname>/retweet/<tweet_id>
tweetbot://<screenname>/list/<list_id>?callback_url=<url>
*/


public extension Applications {
    
    public struct Tweetbot: ExternalApplication {
        
        public typealias ActionType = Applications.Tweetbot.Action
        
        public let scheme = "tweetbot:"
        public let fallbackURL = "http://tapbots.com/tweetbot/"
        public let appStoreId = "722294701"
        
        public init() {} 
    }
}

// MARK: - Actions

public extension Applications.Tweetbot {
    
    public enum Action {
        case Timeline(screenname: String?)
        case Mentions(screenname: String?)
        case Retweets(screenname: String?)
        case DirectMessages(screenname: String?)
        case Lists(screenname: String?)
        case Favorites(screenname: String?)
        case Search(screenname: String?, query: String?, callbackurl: String?)
        case Status(screenname: String?, tweetId: String, callbackurl: String?)
        case UserProfile(screenname: String?, profileScreennameOrId: String, callbackurl: String?)
        case Post(screenname: String?,text: String?, callbackurl: String?, repliedStatusId: String?)
        case Follow(screenname: String?, followScreennameOrId: String)
        case Unfollow(screenname: String?, followScreennameOrId: String)
        case Favorite(screenname: String?, tweetId: String)
        case Unfavorite(screenname: String?, tweetId: String)
        case Retweet(screenname: String?, tweetId: String)
        case List(screenname: String?, listId: String, callbackurl: String?)
    }
}

extension Applications.Tweetbot.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
            //do actions
        case .Timeline(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "timeline"],
                    queryParameters: [:]),
                web: Path())
            
        case .Mentions(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "mentions"],
                    queryParameters: [:]),
                web: Path())
            
        case .Retweets(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "retweets"],
                    queryParameters: [:]),
                web: Path())
            
        case .DirectMessages(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "direct_messages"],
                    queryParameters: [:]),
                web: Path())
            
        case .Lists(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "lists"],
                    queryParameters: [:]),
                web: Path())
            
        case .Favorites(let screenname):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "favorites"],
                    queryParameters: [:]),
                web: Path())
            
        case .Search(let screenname, let query, let callbackurl):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "search"],
                    queryParameters: [
                        "query":query ?? "",
                        "callback_url":callbackurl ?? ""]),
                web: Path())
            
        case .Status(let screenname, let tweetId, let callbackurl):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "status", tweetId],
                    queryParameters: ["callback_url":callbackurl ?? ""]),
                web: Path())
            
        case .UserProfile(let screenname , let profileScreennameOrId , let callbackurl):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "",
                        "user_profile", profileScreennameOrId],
                    queryParameters: ["callback_url":callbackurl ?? ""]),
                web: Path())
            
        case .Post(let screenname, let text, let callbackurl, let repliedStatusId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "post"],
                    queryParameters: [
                        "text":text ?? "",
                        "in_reply_to_status_id": repliedStatusId ?? "",
                        "callback_url":callbackurl ?? ""]),
                web: Path())
            
        case .Follow(let screenname, let followScreennameOrId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "follow", followScreennameOrId],
                    queryParameters: [:]),
                web: Path())
            
        case .Unfollow(let screenname, let followScreennameOrId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "unfollow", followScreennameOrId],
                    queryParameters: [:]),
                web: Path())
            
        case .Favorite(let screenname, let tweetId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "favorite", tweetId],
                    queryParameters: [:]),
                web: Path())
            
        case .Unfavorite(let screenname, let tweetId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "unfavorite", tweetId],
                    queryParameters: [:]),
                web: Path())
            
        case .Retweet(let screenname, let tweetId):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "retweet", tweetId],
                    queryParameters: [:]),
                web: Path())
            
        case .List(let screenname, let listId, let callbackurl):
            return ActionPaths(
                app:
                Path(
                    pathComponents: [screenname ?? "", "list", listId],
                    queryParameters: ["callback_url" : callbackurl ?? ""]),
                web: Path())
        }
    }
}

