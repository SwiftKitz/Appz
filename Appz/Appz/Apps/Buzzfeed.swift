//
//  Buzzfeed.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/6/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Buzzfeed: ExternalApplication {
        
        public typealias ActionType = Applications.Buzzfeed.Action
        
        public let scheme = "buzzfeed:"
        public let fallbackURL = "http://www.buzzfeed.com"
        public let appStoreId = "352969997"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Buzzfeed {
    
    public enum Action {
        case Open
    }
}

extension Applications.Buzzfeed.Action: ExternalApplicationAction {
    
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
