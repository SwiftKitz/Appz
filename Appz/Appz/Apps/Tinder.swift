//
//  Tinder.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Tinder: ExternalApplication {
        
        public typealias ActionType = Applications.Tinder.Action
        
        public let scheme = "tinder:"
        public let fallbackURL = "https://www.gotinder.com"
        public let appStoreId = "547702041"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Tinder {
    
    public enum Action {
        case Open
    }
}

extension Applications.Tinder.Action: ExternalApplicationAction {
    
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
