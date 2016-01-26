//
//  Uber.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Uber: ExternalApplication {
        
        public typealias ActionType = Applications.Uber.Action
        
        public let scheme = "uber:"
        public let fallbackURL = "https://www.uber.com"
        public let appStoreId = "368677368"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Uber {
    
    public enum Action {
        case Open
    }
}

extension Applications.Uber.Action: ExternalApplicationAction {
    
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
