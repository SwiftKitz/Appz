//
//  WordPress.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/19/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct WordPress: ExternalApplication {
        
        public typealias ActionType = Applications.WordPress.Action
        
        public let scheme = "wordpress:"
        public let fallbackURL = "https://apps.wordpress.org"
        public let appStoreId = "335703880"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.WordPress {
    
    public enum Action {
        case Open
    }
}

extension Applications.WordPress.Action: ExternalApplicationAction {
    
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
