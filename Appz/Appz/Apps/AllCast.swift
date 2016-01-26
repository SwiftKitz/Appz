//
//  AllCast.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AllCast: ExternalApplication {
        
        public typealias ActionType = Applications.AllCast.Action
        
        public let scheme = "allCast:"
        public let fallbackURL = "http://www.allcast.io"
        public let appStoreId = "943763227"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AllCast {
    
    public enum Action {
        case Open
    }
}

extension Applications.AllCast.Action: ExternalApplicationAction {
    
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
