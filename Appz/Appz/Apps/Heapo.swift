//
//  Heapo.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Heapo: ExternalApplication {
        
        public typealias ActionType = Applications.Heapo.Action
        
        public let scheme = "heap:"
        public let fallbackURL = "http://heapo.marblzz.com"
        public let appStoreId = "921961118"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Heapo {
    
    public enum Action {
        case Open
    }
}

extension Applications.Heapo.Action: ExternalApplicationAction {
    
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
