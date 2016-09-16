//
//  Dropbox.swift
//  Pods
//
//  Created by Mariam AlJamea on 12/25/15.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Dropbox: ExternalApplication {
        
        public typealias ActionType = Applications.Dropbox.Action
        
        public let scheme = "dbapi-2:"
        public let fallbackURL = "https://dropbox.com/"
        public let appStoreId = "327630330"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Dropbox {
    
    public enum Action {
        case open
    }
}

extension Applications.Dropbox.Action: ExternalApplicationAction {
    
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

