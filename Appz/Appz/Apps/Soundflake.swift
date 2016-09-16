//
//  Soundflake.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Soundflake: ExternalApplication {
        
        public typealias ActionType = Applications.Soundflake.Action
        
        public let scheme = "soundflake:"
        public let fallbackURL = "http://soundflakeapp.com"
        public let appStoreId = "914459618"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Soundflake {
    
    public enum Action {
        case open
    }
}

extension Applications.Soundflake.Action: ExternalApplicationAction {
    
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
