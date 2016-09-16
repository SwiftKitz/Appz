//
//  Netflix.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Netflix: ExternalApplication {
        
        public typealias ActionType = Applications.Netflix.Action
        
        public let scheme = "nflx:"
        public let fallbackURL = "https://www.netflix.com"
        public let appStoreId = "363590051"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Netflix {
    
    public enum Action {
        case open
    }
}

extension Applications.Netflix.Action: ExternalApplicationAction {
    
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
