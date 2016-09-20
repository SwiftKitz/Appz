//
//  Tango.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Tango: ExternalApplication {
        
        public typealias ActionType = Applications.Tango.Action
        
        public let scheme = "tango:"
        public let fallbackURL = "http://www.tango.me"
        public let appStoreId = "372513032"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Tango {
    
    public enum Action {
        case open
    }
}

extension Applications.Tango.Action: ExternalApplicationAction {
    
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
