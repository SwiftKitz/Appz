//
//  Kik.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/20/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Kik: ExternalApplication {
        
        public typealias ActionType = Applications.Kik.Action
        
        public let scheme = "kik:"
        public let fallbackURL = "http://www.kik.com"
        public let appStoreId = "357218860"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Kik {
    
    public enum Action {
        case Open
    }
}

extension Applications.Kik.Action: ExternalApplicationAction {
    
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
