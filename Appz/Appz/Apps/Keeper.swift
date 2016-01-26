//
//  Keeper.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Keeper: ExternalApplication {
        
        public typealias ActionType = Applications.Keeper.Action
        
        public let scheme = "keeper:"
        public let fallbackURL = "https://keepersecurity.com/"
        public let appStoreId = "287170072"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Keeper {
    
    public enum Action {
        case Open
    }
}

extension Applications.Keeper.Action: ExternalApplicationAction {
    
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
