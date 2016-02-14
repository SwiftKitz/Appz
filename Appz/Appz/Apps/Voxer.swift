//
//  Voxer.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Voxer: ExternalApplication {
        
        public typealias ActionType = Applications.Voxer.Action
        
        public let scheme = "voxer:"
        public let fallbackURL = "http://www.voxer.com"
        public let appStoreId = "377304531"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Voxer {
    
    public enum Action {
        case Open
    }
}

extension Applications.Voxer.Action: ExternalApplicationAction {
    
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
