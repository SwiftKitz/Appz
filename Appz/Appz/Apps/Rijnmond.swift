//
//  Rijnmond.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Rijnmond: ExternalApplication {
        
        public typealias ActionType = Applications.Rijnmond.Action
        
        public let scheme = "rtvrijnmond:"
        public let fallbackURL = "http://www.rijnmond.nl"
        public let appStoreId = "421376740"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Rijnmond {
    
    public enum Action {
        case open
    }
}

extension Applications.Rijnmond.Action: ExternalApplicationAction {
    
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
