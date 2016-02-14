//
//  Nunl.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Nunl: ExternalApplication {
        
        public typealias ActionType = Applications.Nunl.Action
        
        public let scheme = "nunl:"
        public let fallbackURL = "http://www.nu.nl"
        public let appStoreId = "382059927"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Nunl {
    
    public enum Action {
        case Open
    }
}

extension Applications.Nunl.Action: ExternalApplicationAction {
    
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
