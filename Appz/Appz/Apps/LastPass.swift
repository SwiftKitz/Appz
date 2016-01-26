//
//  LastPass.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct LastPass: ExternalApplication {
        
        public typealias ActionType = Applications.LastPass.Action
        
        public let scheme = "lastpass:"
        public let fallbackURL = "https://lastpass.com"
        public let appStoreId = "324613447"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.LastPass {
    
    public enum Action {
        case Open
    }
}

extension Applications.LastPass.Action: ExternalApplicationAction {
    
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
