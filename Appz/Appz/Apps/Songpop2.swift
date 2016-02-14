//
//  Songpop2.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/7/16.
//  Copyright © 2016 kitz. All rights reserved.
//

public extension Applications {
    
    public struct Songpop2: ExternalApplication {
        
        public typealias ActionType = Applications.Songpop2.Action
        
        public let scheme = "songpop:"
        public let fallbackURL = "https://www.songpop2.com"
        public let appStoreId = "975364678"
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.Songpop2 {
    
    public enum Action {
        case Open
    }
}

extension Applications.Songpop2.Action: ExternalApplicationAction {
    
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
