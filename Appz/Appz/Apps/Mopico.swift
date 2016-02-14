//
//  Mopico.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Mopico: ExternalApplication {
        
        public typealias ActionType = Applications.Mopico.Action
        
        public let scheme = "mopico:"
        public let fallbackURL = "http://mo-pi-co.com"
        public let appStoreId = "879992496"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Mopico {
    
    public enum Action {
        case Open
    }
}

extension Applications.Mopico.Action: ExternalApplicationAction {
    
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

