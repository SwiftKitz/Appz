//
//  Music.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/3/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Music: ExternalApplication {
        
        public typealias ActionType = Applications.Music.Action
        
        public let scheme = "music:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Music {
    
    public enum Action {
        case open
    }
}

extension Applications.Music.Action: ExternalApplicationAction {
    
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
