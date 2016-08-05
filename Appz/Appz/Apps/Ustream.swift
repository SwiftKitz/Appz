//
//  Ustream.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Ustream: ExternalApplication {
        
        public typealias ActionType = Applications.Ustream.Action
        
        public let scheme = "ustream:"
        public let fallbackURL = "https://www.ustream.tv/platform/watch-everywhere"
        public let appStoreId = "301520250"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Ustream {
    
    public enum Action {
        case open
    }
}

extension Applications.Ustream.Action: ExternalApplicationAction {
    
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
