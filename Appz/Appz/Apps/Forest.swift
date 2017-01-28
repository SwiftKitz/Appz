//
//  Forest.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Forest: ExternalApplication {
        
        public typealias ActionType = Applications.Forest.Action
        
        public let scheme = "Forest:"
        public let fallbackURL = "https://www.forestapp.cc/en/"
        public let appStoreId = "866450515"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Forest {
    
    public enum Action {
        case open
    }
}

extension Applications.Forest.Action: ExternalApplicationAction {
    
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
