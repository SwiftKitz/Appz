//
//  Whyd.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Whyd: ExternalApplication {
        
        public typealias ActionType = Applications.Whyd.Action
        
        public let scheme = "whyd:"
        public let fallbackURL = "https://whyd.com"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Whyd {
    
    public enum Action {
        case Open
    }
}

extension Applications.Whyd.Action: ExternalApplicationAction {
    
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
