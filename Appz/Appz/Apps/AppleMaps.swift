//
//  AppleMaps.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/23/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AppleMaps: ExternalApplication {
        
        public typealias ActionType = Applications.AppleMaps.Action
        
        public let scheme = "maps:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AppleMaps {
    
    public enum Action {
        case Open
    }
}

extension Applications.AppleMaps.Action: ExternalApplicationAction {
    
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
