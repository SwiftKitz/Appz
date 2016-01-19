//
//  Snapchat.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Snapchat: ExternalApplication {
        
        public typealias ActionType = Applications.Snapchat.Action
        
        public let scheme = "snapchat:"
        public let fallbackURL = "https://www.snapchat.com"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Snapchat {
    
    public enum Action {
        case Open
    }
}

extension Applications.Snapchat.Action: ExternalApplicationAction {
    
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
