//
//  Snapseed.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/22/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Snapseed: ExternalApplication {
        
        public typealias ActionType = Applications.Snapseed.Action
        
        public let scheme = "googlesnapseed:"
        public let fallbackURL = "https://support.google.com/snapseed/#topic=6155507"
        public let appStoreId = "439438619"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Snapseed {
    
    public enum Action {
        case Open
    }
}

extension Applications.Snapseed.Action: ExternalApplicationAction {
    
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
