//
//  EyeEm.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/27/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct EyeEm: ExternalApplication {
        
        public typealias ActionType = Applications.EyeEm.Action
        
        public let scheme = "eyeem:"
        public let fallbackURL = "https://www.eyeem.com/community"
        public let appStoreId = "445638931"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.EyeEm {
    
    public enum Action {
        case Open
    }
}

extension Applications.EyeEm.Action: ExternalApplicationAction {
    
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
