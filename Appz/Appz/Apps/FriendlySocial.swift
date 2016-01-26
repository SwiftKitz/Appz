//
//  FriendlySocial.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct FriendlySocial: ExternalApplication {
        
        public typealias ActionType = Applications.FriendlySocial.Action
        
        public let scheme = "friendly-chrome-x-success:"
        public let fallbackURL = "http://friendly.io"
        public let appStoreId = "400169658"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.FriendlySocial {
    
    public enum Action {
        case Open
    }
}

extension Applications.FriendlySocial.Action: ExternalApplicationAction {
    
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
        }
    }
}
