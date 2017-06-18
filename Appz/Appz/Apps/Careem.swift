//
//  Careem.swift
//  Appz
//
//  Created by Mariam AlJamea on 6/18/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Careem: ExternalApplication {
        
        public typealias ActionType = Applications.Careem.Action
        
        public let scheme = "careem:"
        public let fallbackURL = "https://www.careem.com/dubai/node"
        public let appStoreId = "592978487"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Careem {
    
    public enum Action {
        case open
    }
}

extension Applications.Careem.Action: ExternalApplicationAction {
    
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
