//
//  Everypost.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Everypost: ExternalApplication {
        
        public typealias ActionType = Applications.Everypost.Action
        
        public let scheme = "everypost:"
        public let fallbackURL = "http://everypost.me"
        public let appStoreId = "572530903"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Everypost {
    
    public enum Action {
        case Open
    }
}

extension Applications.Everypost.Action: ExternalApplicationAction {
    
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
