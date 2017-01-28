//
//  Watch.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Watch: ExternalApplication {
        
        public typealias ActionType = Applications.Watch.Action
        
        public let scheme = "itms-watch:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Watch {
    
    public enum Action {
        case open
    }
}

extension Applications.Watch.Action: ExternalApplicationAction {
    
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
