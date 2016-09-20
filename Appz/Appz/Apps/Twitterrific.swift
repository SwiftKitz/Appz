//
//  Twitterrific.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Twitterrific: ExternalApplication {
        
        public typealias ActionType = Applications.Twitterrific.Action
        
        public let scheme = "twitterrific:"
        public let fallbackURL = "http://twitterrific.com/ios"
        public let appStoreId = "580311103"
        
        public init() {}
    }
}

// MARK: - Actions
// Taken from http://twitterrific.com/ios/poweruser

public extension Applications.Twitterrific {
    
    public enum Action {
        case open
        case mentionsView
        case messagesView
        case favoritesView
        case search(query: String)
        case tweetID(id: String)
        case messageID(id: String)
        case post(message: String)
        case userProfile(screenName: String)
    }
}

extension Applications.Twitterrific.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .mentionsView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["mentions"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .messagesView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["messages"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .favoritesView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["favorites"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .search(let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["search"],
                    queryParameters: ["q": query]
                ),
                web: Path()
            )
            
        case .tweetID(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["tweet"],
                    queryParameters: ["id": id]
                ),
                web: Path()
            )
            
        case .messageID(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["message"],
                    queryParameters: ["id": id]
                ),
                web: Path()
            )
            
        case .post(let message):
            return ActionPaths(
                app: Path(
                    pathComponents: ["post"],
                    queryParameters: [
                        "message": message,
                    ]
                ),
                web: Path()
            )
            
        case .userProfile(let screenName):
            return ActionPaths(
                app: Path(
                    pathComponents: ["profile"],
                    queryParameters: ["screen_name": screenName]
                ),
                web: Path()
            )
        }
    }
}
