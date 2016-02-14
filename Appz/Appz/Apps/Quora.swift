//
//  Quora.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Quora: ExternalApplication {
        
        public typealias ActionType = Applications.Quora.Action
        
        public let scheme = "Quora:"
        public let fallbackURL = "https://www.quora.com/"
        public let appStoreId = "456034437"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Quora {
    
    public enum Action {
        case Open
    }
}

extension Applications.Quora.Action: ExternalApplicationAction {
    
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
