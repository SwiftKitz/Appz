//
//  Tumblr.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Tumblr: ExternalApplication {
        
        public typealias ActionType = Applications.Tumblr.Action
        
        public let scheme = "tumblr:"
        public let fallbackURL = "https://www.tumblr.com"
        public let appStoreId = "305343404"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Tumblr {
    
    public enum Action {
        case open
        case dashboard
        case explore
        case activity
        case blog
        case tag(tag: String)
    }
}

extension Applications.Tumblr.Action: ExternalApplicationAction {
    
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
            
        case .dashboard:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "dashboard"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .explore:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "explore"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .activity:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "activity"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .blog:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "blog"],
                    queryParameters: [:]
                ),
                web: Path()
            )
          
        case .tag(let tag):
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "tag"],
                    queryParameters:
                    [
                        "tag":tag
                    ]
                ),
                web: Path()
            )
        }
    }
}
