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
        case Open
        case MentionsView
        case MessagesView
        case FavoritesView
        case Search(query: String)
        case TweetID(id: String)
        case MessageID(id: String)
        case Post(message: String)
        case UserProfile(screenName: String)
    }
}

extension Applications.Twitterrific.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .MentionsView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["mentions"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .MessagesView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["messages"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .FavoritesView:
            return ActionPaths(
                app: Path(
                    pathComponents: ["favorites"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Search(let query):
            return ActionPaths(
                app: Path(
                    pathComponents: ["search"],
                    queryParameters: ["q": query]
                ),
                web: Path()
            )
            
        case .TweetID(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["tweet"],
                    queryParameters: ["id": id]
                ),
                web: Path()
            )
            
        case .MessageID(let id):
            return ActionPaths(
                app: Path(
                    pathComponents: ["message"],
                    queryParameters: ["id": id]
                ),
                web: Path()
            )
            
        case .Post(let message):
            return ActionPaths(
                app: Path(
                    pathComponents: ["post"],
                    queryParameters: [
                        "message": message,
                    ]
                ),
                web: Path()
            )
            
        case .UserProfile(let screenName):
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
