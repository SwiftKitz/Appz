//
//  Feedly.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/25/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Feedly: ExternalApplication {
        
        public typealias ActionType = Applications.Feedly.Action
        
        public let scheme = "feedly:"
        public let fallbackURL = "http://feedly.com/i/welcome"
        public let appStoreId = "396069556"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Feedly {
    
    public enum Action {
        case open
    }
}

extension Applications.Feedly.Action: ExternalApplicationAction {
    
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
