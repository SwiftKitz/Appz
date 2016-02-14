//
//  Swarm.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Swarm: ExternalApplication {
        
        public typealias ActionType = Applications.Swarm.Action
        
        public let scheme = "swarm:"
        public let fallbackURL = "https://www.swarmapp.com"
        public let appStoreId = "870161082"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Swarm {
    
    public enum Action {
        case Open
    }
}

extension Applications.Swarm.Action: ExternalApplicationAction {
    
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
