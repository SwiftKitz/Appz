//
//  AppleWatch.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/28/17.
//  Copyright © 2017 kitz. All rights reserved.
//

public extension Applications {
    
    public struct AppleWatch: ExternalApplication {
        
        public typealias ActionType = Applications.AppleWatch.Action
        
        public let scheme = "itms-watch:"
        public let fallbackURL = ""
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.AppleWatch {
    
    public enum Action {
        case open
    }
}

extension Applications.AppleWatch.Action: ExternalApplicationAction {
    
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
