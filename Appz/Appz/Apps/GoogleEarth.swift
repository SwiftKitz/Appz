//
//  GoogleEarth.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/2/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct GoogleEarth: ExternalApplication {
        
        public typealias ActionType = Applications.GoogleEarth.Action
        
        public let scheme = "kml:"
        public let fallbackURL = "https://www.google.com/earth/"
        public let appStoreId = "293622097"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.GoogleEarth {
    
    public enum Action {
        case Open
    }
}

extension Applications.GoogleEarth.Action: ExternalApplicationAction {
    
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
