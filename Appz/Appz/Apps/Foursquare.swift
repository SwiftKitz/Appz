//
//  Foursquare.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Foursquare: ExternalApplication {
        
        public typealias ActionType = Applications.Foursquare.Action
        
        public let scheme = "foursquare:"
        public let fallbackURL = "https://foursquare.com/download"
        public let appStoreId = "306934924"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Foursquare {
    
    public enum Action {
        case open
    }
}

extension Applications.Foursquare.Action: ExternalApplicationAction {
    
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
