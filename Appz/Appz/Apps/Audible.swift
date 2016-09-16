//
//  Audible.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Audible: ExternalApplication {
        
        public typealias ActionType = Applications.Audible.Action
        
        public let scheme = "Audible:"
        public let fallbackURL = "http://www.audible.com/"
        public let appStoreId = "379693831"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Audible {
    
    public enum Action {
        case open
    }
}

extension Applications.Audible.Action: ExternalApplicationAction {
    
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
