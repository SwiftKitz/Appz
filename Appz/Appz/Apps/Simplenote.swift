//
//  Simplenote.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/16/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Simplenote: ExternalApplication {
        
        public typealias ActionType = Applications.Simplenote.Action
        
        public let scheme = "simplenote:"
        public let fallbackURL = "http://simplenote.com"
        public let appStoreId = "289429962"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Simplenote {
    
    public enum Action {
        case open
    }
}

extension Applications.Simplenote.Action: ExternalApplicationAction {
    
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
