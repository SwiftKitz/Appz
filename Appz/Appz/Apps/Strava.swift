//
//  Strava.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Strava: ExternalApplication {
        
        public typealias ActionType = Applications.Strava.Action
        
        public let scheme = "strava:"
        public let fallbackURL = "http://www.strava.com/mobile"
        public let appStoreId = "426826309"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Strava {
    
    public enum Action {
        case open
    }
}

extension Applications.Strava.Action: ExternalApplicationAction {
    
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
        }
    }
}

