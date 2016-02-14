//
//  DayCost.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/9/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct DayCost: ExternalApplication {
        
        public typealias ActionType = Applications.DayCost.Action
        
        public let scheme = "DayCost:"
        public let fallbackURL = "https://www.facebook.com/iDaycost/"
        public let appStoreId = "979953415"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.DayCost {
    
    public enum Action {
        case Open
    }
}

extension Applications.DayCost.Action: ExternalApplicationAction {
    
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
