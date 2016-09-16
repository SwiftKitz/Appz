//
//  Vine.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/5/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Vine: ExternalApplication {
        
        public typealias ActionType = Applications.Vine.Action
        
        public let scheme = "vine:"
        public let fallbackURL = "https://vine.co"
        public let appStoreId = "592447445"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Vine {
    
    public enum Action {
        case open
        case timelinesPopular
    }
}

extension Applications.Vine.Action: ExternalApplicationAction {
    
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
            
        case .timelinesPopular:
            return ActionPaths(
                app: Path(
                    pathComponents: ["timelines", "popular"],
                    queryParameters: [:]
                ),
                web: Path(
                    pathComponents: ["popular-now"],
                    queryParameters: [:]
                )
            )
        }
    }
}
