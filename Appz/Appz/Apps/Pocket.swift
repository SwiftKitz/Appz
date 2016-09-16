//
//  Pocket.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Pocket: ExternalApplication {
        
        public typealias ActionType = Applications.Pocket.Action
        
        public let scheme = "pocket:"
        public let fallbackURL = "https://getpocket.com/ios/?ep=1"
        public let appStoreId = "309601447"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Pocket {
    
    public enum Action {
        case open
    }
}

extension Applications.Pocket.Action: ExternalApplicationAction {
    
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
