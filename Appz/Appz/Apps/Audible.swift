//
//  Audible.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/1/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Audible: ExternalApplication {
        
        public typealias ActionType = Applications.Audible.Action
        
        public let scheme = "Audible:"
        public let fallbackURL = "http://www.audible.com/"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Audible {
    
    public enum Action {
        case Open
    }
}

extension Applications.Audible.Action: ExternalApplicationAction {
    
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
