//
//  Periscope.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Periscope: ExternalApplication {
        
        public typealias ActionType = Applications.Periscope.Action
        
        public let scheme = "pscp:"
        public let fallbackURL = "https://www.periscope.tv"
        public let appStoreId = "972909677"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Periscope {
    
    public enum Action {
        case Open
    }
}

extension Applications.Periscope.Action: ExternalApplicationAction {
    
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
