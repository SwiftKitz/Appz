//
//  Echofon.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/15/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Echofon: ExternalApplication {
        
        public typealias ActionType = Applications.Echofon.Action
        
        public let scheme = "echofon:"
        public let fallbackURL = "http://www.echofon.com"
        public let appStoreId = "286756410"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Echofon {
    
    public enum Action {
        case open
    }
}

extension Applications.Echofon.Action: ExternalApplicationAction {
    
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
