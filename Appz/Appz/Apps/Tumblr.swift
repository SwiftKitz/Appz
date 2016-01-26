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
        case Open
        case Dashboard
        case Explore
        case Activity
        case Blog
        case Tag(tag: String)
    }
}

extension Applications.Tumblr.Action: ExternalApplicationAction {
    
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
            
        case .Dashboard:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "dashboard"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Explore:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "explore"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Activity:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "activity"],
                    queryParameters: [:]
                ),
                web: Path()
            )
            
        case .Blog:
            return ActionPaths(
                app: Path(
                    pathComponents: ["x-callback-url", "blog"],
                    queryParameters: [:]
                ),
                web: Path()
            )
          
        case .Tag(let tag):
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
